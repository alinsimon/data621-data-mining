# DATA 621 Data Mining

This repository contains course assignments and course project work for DATA 621.

## Collaborators

The collaborators for this repository are:

1. Alinzon Simon
2. Ciara Bonnett Jones
3. Denise Atherley
4. Jane Song
5. Joao Deoliveira
6. Kevin Diperna

## Folders

Each homework has its own folder. The homework folder contains the assignment instructions, data, notebooks, and report.

The course project has separate folders for its data, notebooks, and report.

```text
homeworks/
  hw01/
    instructions/
    data/
    notebooks/
    report/
```

The homework and project folders are kept separate so that files from one assignment do not get mixed with files from another.

For a homework completed in R or Python, keep one complete notebook in `notebooks/` and place the exported PDF in `report/`. Keep the assignment instructions PDF in `instructions/`.


## Getting started

Use VS Code with the Jupyter extension to work with both R and Python notebooks. The steps below are written for Windows.

### 1. Install the required software

Install these before opening the notebook:

- R from [CRAN](https://cran.r-project.org/bin/windows/base/)
- Python from [python.org](https://www.python.org/downloads/windows/)
- VS Code

During the Python installation, enable the option to add Python to `PATH` if it is offered.

Install these VS Code extensions:

- Jupyter (`ms-toolsai.jupyter`)
- Python (`ms-python.python`)
- R (`REditorSupport.r`)

### 2. Set up Python and Jupyter

Open this repository in VS Code. In the VS Code terminal, run:

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install -r requirements.txt
```

If PowerShell does not allow the activation script, run the commands without activation:

```powershell
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
```

### 3. Set up R and register the R kernel

Make sure `Rscript` is available in the VS Code terminal. Test it with:

```powershell
Rscript --version
```

Then run the setup script from the repository root:

```powershell
Rscript setup_r.R
```

The script installs the R packages used in the course and registers the R kernel with Jupyter. It is safe to run again because already-installed packages are skipped.

### 4. Verify the kernels

Run this command in the VS Code terminal:

```powershell
python -m jupyter kernelspec list
```

The list should include `ir` or `R` and `python3`. If the command is not found, use the Python executable from the virtual environment:

```powershell
.\.venv\Scripts\python.exe -m jupyter kernelspec list
```

### 5. Open the notebook

Open `homeworks/hw01/notebooks/hw01_moneyball_analysis.ipynb` in VS Code. Select **Select Kernel** in the upper-right corner, choose **Jupyter Kernel**, and select **R** or **ir**.

Run the notebook from the first cell through the last cell. Export the completed notebook as a PDF in `homeworks/hw01/report/`.
