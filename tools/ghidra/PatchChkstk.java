// Pre-analysis script: replace MSC "_chkstk" prologue calls
//   B8 lo hi       mov ax, N
//   9A off seg     call far _chkstk
// with
//   81 EC lo hi    sub sp, N
//   90 90 90 90    nop x4
// so the decompiler can track the stack frame.  Relocations have already been
// applied by the loader when this runs, so patching bytes is safe.
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.*;
import ghidra.program.model.mem.*;

public class PatchChkstk extends GhidraScript {
    @Override
    public void run() throws Exception {
        String[] args = getScriptArgs();
        int chk = args.length > 0 ? Integer.parseInt(args[0], 16) : 0x0712;
        Memory mem = currentProgram.getMemory();
        int n = 0;
        for (MemoryBlock b : mem.getBlocks()) {
            if (!b.isExecute() && !b.getName().toLowerCase().contains("code")) continue;
            if (!b.isInitialized()) continue;
            Address a = b.getStart();
            long len = b.getSize();
            byte[] buf = new byte[(int) len];
            b.getBytes(a, buf);
            for (int i = 0; i + 8 <= buf.length; i++) {
                if ((buf[i] & 0xff) == 0xB8 && (buf[i + 3] & 0xff) == 0x9A) {
                    int off = (buf[i + 4] & 0xff) | ((buf[i + 5] & 0xff) << 8);
                    if (off != chk) continue;
                    byte[] p = {(byte) 0x81, (byte) 0xEC, buf[i + 1], buf[i + 2],
                                (byte) 0x90, (byte) 0x90, (byte) 0x90, (byte) 0x90};
                    mem.setBytes(a.add(i), p);
                    n++;
                }
            }
            println("block " + b.getName() + " patched so far " + n);
        }
        println("patched " + n + " chkstk prologues");
    }
}
