# This script shows you how to install a new package to the project

# install a package -------------------------------------------------------

renv::install("shinydashboard")         # 1. INSTALL the package
usethis::use_package("shinydashboard")  # 2. fill in DESCRIPTION
renv::snapshot()                        # 3. update RENV
# add it in ROXYGEN comments            # 4. add to ROXYGEN/NAMESPACE

# remove a package --------------------------------------------------------

renv::remove("shinydashboard")
renv::snapshot()
# remove it from DESCRIPTION
# remove it from ROXYGEN comments

