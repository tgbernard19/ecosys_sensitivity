import argparse
import os
import pathlib
import subprocess
import numpy as np

def run_mcmc(
    n_iter: int = 3,
    mu: float = 5e-4,
    sigma: float = 1e-4,
    executable: str = "./ecosys.x",
    runscript_path: str = "examples/sample_run/runscript_test",
):
    """Sample root C exudation rate from :math:`N(mu, sigma)` and run ECOSYS.

    Returns a list of dicts with iteration, sampled ``FEXUC`` and return code.
    """

    run_dir = pathlib.Path(runscript_path).parent
    runscript = pathlib.Path(runscript_path).name
    exe_path = pathlib.Path(executable).resolve()

    if not exe_path.exists():
        raise FileNotFoundError(f"ECOSYS executable not found: {exe_path}")
    if not (run_dir / runscript).exists():
        raise FileNotFoundError(f"Runscript not found: {run_dir / runscript}")

    script_contents = (run_dir / runscript).read_text()
    results = []
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
        results.append(
            {
                "iter": i,
                "fexuc": fexuc,
                "returncode": proc.returncode,
                "stderr": proc.stderr.splitlines()[-1] if proc.stderr else "",
            }
        )
    return results


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="MCMC sensitivity for root exudation")
    parser.add_argument("--runscript", default="examples/sample_run/runscript_test",
                        help="Path to ECOSYS runscript")
    parser.add_argument("--executable", default="/Users/tgbernard19/ecosys/local/bin/ecosys.x",
                        help="Path to ECOSYS executable")
    parser.add_argument("--n-iter", type=int, default=3,
                        help="Number of MCMC iterations")
    parser.add_argument("--mu", type=float, default=5e-4,
                        help="Mean of normal proposal distribution")
    parser.add_argument("--sigma", type=float, default=1e-4,
                        help="Std. dev. of normal proposal distribution")
    args = parser.parse_args()

    for record in run_mcmc(
        n_iter=args.n_iter,
        mu=args.mu,
        sigma=args.sigma,
        executable=args.executable,
        runscript_path=args.runscript,
    ):
        print(record)
