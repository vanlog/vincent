# vincent

<!-- badges: start -->
<!-- badges: end -->

The goal of vincent is to demonstrate you how to write a tidy production-ready Shiny Application from scratch.

## Setup

### Mandatory

In order to attend this tutorial is enough to have R (>3.4), RStudio (best if it is updated) and Git installed on your computer. Dependently on you operative system you can install:

1. install "Git for Windows" [https://gitforwindows.org/](https://gitforwindows.org/) if you use **Windows** 
2. use your favorite package manager if you use **Linux**: i.e. `sudo apt install git`
3. should be integrated in your system if you use **MacOS**.

In order to test that:
1. select *New Project* from RStudio Menu, 
2. *Version Control*
3. *Git*
4. *Repository URL*: `https://github.com/vanlog/vincent`
5. *Create project*

If everything works, your setup is complete. We will develop the package from scratch.

### Optional

This steps are useful only to speed up the installation:

0. `install.packages("renv")`
1. `renv::activate()`
2. `renv::restore()`


I am looking forward meeting you!

## Branch

### Description

1. *master*: use it only for the `README.md` file `doc` folder and `data-raw`
2. *stage-0*: brand new Golem Project
2. *stage-1*: status at the end of the first part
3. *stage-2*: status at the end of the second part
4. *stage-3*: status at the end of the third part

### How to clean start 

Example we want to start from *stage-0* (we are at the beginning of the workshop):

1. set the branch to *stage-0* (example command: `git checkout stage-0`)
1. create a new branch *stage-1-wip* (work in progress to *stage-1*)
1. now you can code and commit.

Example we are at the beginning of the second part and want to start from *stage-1*

1. commit everithing or reset your git repo (no modification on the stage or not in the stage)
1. set the branch to *stage-1* (example command: `git checkout stage-0`)
1. create a new branch *stage-2-wip* (work in progress to *stage-2*)
1. now you can code and commit.

# Exercises

## Stage-0

### Advice

Read [Recipe How to install a package](./doc/recipe-install-package.R)

### Exercise 1 - redo

Redo what I did from `stage-0`. You can now use the functions we did not used during the lesson (we transfered them into commets). Read their manual and use git to understand how they modify your project.

### Exercise 2 - shinydashboard

Play around with this application implementing some shiny code in `app_ui.R` and `app_server.R` . You can insert an empty shiny dashboard now. Move on and play with shiny.

Some copy and paste code: https://rstudio.github.io/shinydashboard/get_started.html

### Exercise 3 - renv 

Play around with `renv`:

1. try to install a new package with `renv::install()` or `install.packages()` and look at the differencies.
2. try to install a new package with `renv::install()`, then `renv::snapshot()` and use "git diff" to see what happens.
3. remove a package with `renv::remove()` and then try `renv::snapshot()` or `renv::restore()`

## Stage-1

### Exercise 1

Play around with reactives, use also other kind of reactives.

```
library(shiny)

# create a new reactive value
v1 <- reactiveVal(3)

# print its content
isolate( v1() )


# copy it. Note that I do not use parenthesis.
v2 <- v1

# content is the same
isolate( v2() )

# change the content
v1(10)

# the content is changed also in the copy
isolate( v2() )
```

### Exerecise 2

Add another dashboard-tab to the application, that reads or modifies or reads-and-modifies `data1`, install packages and do whatever you want to customize your application.


## Stage-3

### Exercise 1

Print log messages using one of the following functions:

```
flog.error()
flog.warn()
flog.info()
flog.debug()
flog.trace()
```

And play around with the threshold level:

```
library(futile.logger)
flog.threshold("debug")

flog.warn("warn")
flog.info("info")
flog.debug("debug")

flog.threshold("info")

flog.warn("warn")
flog.info("info")
flog.debug("debug")

flog.threshold("warn")

flog.warn("warn")
flog.info("info")
flog.debug("debug")
```

### Exercise 2 

Continue with the development of the application trying to separate the plain R part from the shiny part. Test the plain R code.








