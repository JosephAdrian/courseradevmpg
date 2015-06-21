---
title       : Developing Data Products 
subtitle    : Reproducible Pitch
author      : Joseph Chris Adrian
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
--- 

## Basic Exploratory Analysis

This presentation is being created as part of the peer assessment for the coursera developing data products class. The assignment is geared toward ensuring the following concepts were well understood by the students:

1. shiny to build data product application
2. R-Presentation or slidify to create data product related presentations

--- .class #id 

## The Application

To display the understanding of using shiny to build an application, a simple application to explore the relationship of mpg(Miles Per Gallon) and other variables in a base R dataset has been deployed at: https://jochrisadrian.shinyapps.io/courseradevmpg

The application allows the user to select the variable for comparison with mpg. 

---

## The Data

This datasets is one of the base datasets in R. Details of the dataset can be found here
https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/mtcars.html

mpg Miles/(US) gallon is the variable that can be seen across the given categorical variables.

The categorical variables chosen are:

1) cyl Number of cylinders 2) am Transmission (0 = automatic, 1 = manual) 3) gear Number of forward gears 4) carb Number of carburetors 

---

## The Code

The application is built in such a way that mpg is aggregated according to the selected variable. 

Below is an example of aggregation:

```r
input = "cyl"
aggregate(mpg ~ mtcars[names(mtcars)==input][,1],data = mtcars, mean)
```

```
##   mtcars[names(mtcars) == input][, 1]      mpg
## 1                                   4 26.66364
## 2                                   6 19.74286
## 3                                   8 15.10000
```

The source code is found in the following link:
https://github.com/JosephAdrian/courseradevmpg













