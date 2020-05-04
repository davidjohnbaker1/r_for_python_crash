# R For Python Short Course


This repository contains five one hour long lessons for data scientists whose typical workflow consists of working with Python and would like to know what R has to offer. 

## Scope

These lessons assume that the student has done two or three data analysis projects using Python, pandas, matplotlib, and seaborn.
The student feels comfortable loading in data into a Jupyter Notebook, chopping it up using panadas, and then knows what shape the data needs to be in so that they can make plots with packages such as matplotlib and run models with packages such as sci-kit learn.

This course intends to show someone with the above background how to use many of the tools provided via the [RStudio](www.rstudio.com) ecosystem such as [RStudio](), [ggplot2]() and [dplyr]() to add to their typical workflow.
The course was intially developed an afternoon crash course for students in their capstone module at [Flatiron School](https://flatironschool.com/) to learn the basics of [R](https://cran.r-project.org/), [RStudio](https://rstudio.com/), and the [tidyverse](https://www.tidyverse.org/) in an afternoon.
In it's current form, the course is now five independent lessons that each take about one hour. 

The goal of each lesson is to give the useR (that's you now) as much of usefulness of R and introduces technical concepts on a need-to-know basis.

Materials for these lessons are based off of  [R for Data Science](https://r4ds.had.co.nz/).

## Lessons

* Lesson 0: [Intalling R, RStudio, and the tidyverse](#lesson0) 
* Lesson 1: [ggplot2](#ggplot2)
* Lesson 2: [dplyr](#dplyr)
* Lesson 3: [Python, R, and RStudio Intergration](#cohabitation)

### Intalling R, RStudio, and the tidyverse (#lesson0)

By the end of the this lesson, students should be able to:

* [ ] Have installed R on their local computer 
* [ ] Have installed RStudio on their local computer
* [ ] Explain what an `.rproj` file does
* [ ] Identify where the editor, console, global environment, and 'finder' window are in RStudio
* [ ] Install and use a library with R 
* [ ] Run a command in RStudio's text editor with a keyboard shortcut
* [ ] Be able to change the colors of their RStudio ID
* [ ] Explain how R's vectorization of code with base R differs from that of Python 


### ggplot2 {#ggplot2}

> Prereq: Bring .csv dataset you have already cleaned with pandas and plotted with matplotlib. This can be either one of your own or something canonical (iris, diamonds, tips).

By the end of this lesson, students should be able to:

* [ ] Import the `ggplot2` library into R
* [ ] Build a scatterplot with existing data
* [ ] Group a scatterplot by color or shape using a categorical variable
* [ ] Facet a scatterplot using a categorical variable 
* [ ] Build a barchart with existing data
* [ ] Fill a barchart with existing data
* [ ] Change a barchart's appearance with the `position = ` argument
* [ ] Identify what form data needs to be in to use `stat = "identity"`
* [ ] Change the title, x, and y axis of a plot 
* [ ] Add a theme to a ggplot

* Building from Bottom Up Live Coding [Layering Flipbook](https://evamaerey.github.io/ggplot_flipbook/ggplot_flipbook_xaringan.html#1)

### dplyr {#dplyr}

By the end of this lesson, students should be able to 

* [ ] Use the `select()` function to extract and reorder columns in thier dataset
* [ ] Use the `filter()` function to perform conditional row-wise operations
* [ ] Use the `mutate()` function to create a new variable in their dataset
* [ ] Use the pipe operator ` %>% ` to use multiple `tidyverse` commands in conjunction with one another
* [ ] Use the `group_by()` function to perform calculations on sub-groups of their data
* [ ] Use the `summarise()` function to extract summary statistics like mean, median, and counts on groups
* [ ] Use the `arrange()` function to rearrange their dataset by different variables 


* Theory of [Tidy Data](https://vita.had.co.nz/papers/tidy-data.pdf)	
* [R for Data Science](https://r4ds.had.co.nz/)

### RStudio as Data Sciene IDE {#cohabitation}

By the end of the lesson, students should be able to:

* [ ] Explain what a Shiny App is 
* [ ] Explain what an RMarkdown file is
* [ ] List three types of output that can be created with RMarkdown
* [ ] Explain how to run a command from the terminal in RStudio
* [ ] Import and install the `reticulate` package
* [ ] Import both an R and Python library in the same script
* [ ] Run Python commands in RStudio 

* R and Python ([Love Story](https://rstudio.com/solutions/r-and-python/))

## Resources

* [R for Python Programmers](http://tidynomicon.tech/)
* [R for Data Science](https://r4ds.had.co.nz/)
* [Practical Programming with R](https://rstudio-education.github.io/hopr/)
* [Tidy Text with R](https://www.tidytextmining.com/)
* [Deep Learning with R]()
* [Advanced R](http://adv-r.had.co.nz/)
* [data.table](https://cran.r-project.org/web/packages/data.table/vignettes/datatable-intro.html) | For Datasets 10-100 Gigs 
