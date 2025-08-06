import os
import pathlib
import subprocess
import numpy as np

def run_mcmc(n_iter=3, mu=5e-4, sigma=1e-4,
             executable="./ecosys.x",
             runscript_path="examples/sample_run/runscript_test"):
    """Sample root C exudation rate from N(mu, sigma) and run ECOSYS.

    Returns a list of dicts with iteration, sampled FEXUC and return code."""
    run_dir = pathlib.Path(runscript_path).parent
    runscript = pathlib.Path(runscript_path).name
    exe_path = pathlib.Path(executable).resolve()
    results = []
    script_contents = (run_dir / runscript).read_text()
    for i in range(n_iter):
        fexuc = np.random.normal(mu, sigma)
        env = os.environ.copy()
        env["FEXUC"] = str(fexuc)
        proc = subprocess.run(
            [str(exe_path)],
            input=script_contents,
            text=True,
            capture_output=True,
            cwd=run_dir,
            env=env,
        )
        results.append({
            "iter": i,
            "fexuc": fexuc,
            "returncode": proc.returncode,
            "stderr": proc.stderr.splitlines()[-1] if proc.stderr else ""
        })
    return results

if __name__ == "__main__":
    for record in run_mcmc():
        print(record)
