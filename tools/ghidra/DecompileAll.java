// Headless Ghidra script: decompile every function in the program to a C file.
// Usage: analyzeHeadless <proj> <name> -import Sheep.exe -postScript DecompileAll.java out.c
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.listing.*;
import java.io.*;

public class DecompileAll extends GhidraScript {
    @Override
    public void run() throws Exception {
        String[] args = getScriptArgs();
        String out = args.length > 0 ? args[0] : "decompiled.c";
        DecompInterface di = new DecompInterface();
        DecompileOptions opts = new DecompileOptions();
        di.setOptions(opts);
        di.openProgram(currentProgram);
        try (PrintWriter pw = new PrintWriter(new FileWriter(out))) {
            FunctionIterator it = currentProgram.getFunctionManager().getFunctions(true);
            while (it.hasNext() && !monitor.isCancelled()) {
                Function f = it.next();
                DecompileResults r = di.decompileFunction(f, 120, monitor);
                pw.println("// ==== " + f.getName() + " @ " + f.getEntryPoint() + " ====");
                if (r != null && r.decompileCompleted()) {
                    pw.println(r.getDecompiledFunction().getC());
                } else {
                    pw.println("// decompile failed: " + (r == null ? "null" : r.getErrorMessage()));
                }
            }
        }
        println("wrote " + out);
    }
}
