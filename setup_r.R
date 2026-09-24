required_packages <- c(
  "tidyverse",
  "janitor",
  "caret",
  "rmarkdown",
  "IRkernel"
)

missing_packages <- required_packages[
  !vapply(required_packages, requireNamespace, logical(1), quietly = TRUE)
]

if (length(missing_packages) > 0) {
  install.packages(missing_packages, repos = "https://cloud.r-project.org")
}

IRkernel::installspec(
  user = TRUE,
  name = "ir",
  displayname = "R"
)

cat("R packages are installed and the R Jupyter kernel is registered.\n")
