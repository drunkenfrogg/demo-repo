Ranking of Teams
================
JinghuaWu
9/28/2018

**import tools**

``` r
# import dplyr and ggplot packages
library(dplyr) 
```

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
library(ggplot2)
```

### Data Preparation

**Load data**

``` r
# import data with read.csv()
df = read.csv('../data/nba2018-teams.csv')
```

**NBA Teams ranked by Total Salary**

``` r
# create a horizontal bar plot
ggplot(df, aes(x=df$Group.1, y=df$salary)) +
  labs(title="NBA Teams ranked by Total Salary") +
  ylab('Salary(in millions)') +
  xlab('Team') +
  geom_bar(stat='identity') +
  coord_flip() +
  geom_hline(aes(yintercept=mean(df$salary)), color='red', alpha=0.7, size=2)
```

![](workout01-Jinghua-Wu_files/figure-markdown_github/NBA%20Teams%20ranked%20by%20Total%20Salary-1.png)

**NBA Teams ranked by Total Point**

``` r
# create a horizontal bar plot
ggplot(df, aes(x=df$Group.1, y=df$points)) +
  labs(title="NBA Teams ranked by Total Point") +
  ylab('Point') +
  xlab('Team') +
  geom_bar(stat='identity') +
  coord_flip() +
  geom_hline(aes(yintercept=mean(df$points)), color='red', alpha=0.7, size=2)
```

![](workout01-Jinghua-Wu_files/figure-markdown_github/NBA%20Teams%20ranked%20by%20Total%20Point-1.png)

**NBA Teams ranked by Total Efficiency**

``` r
# create a horizontal bar plot
ggplot(df, aes(x=df$Group.1, y=df$efficiency)) +
  labs(title="NBA Teams ranked by Total Efficiency") +
  ylab('Efficiency') +
  xlab('Team') +
  geom_bar(stat='identity') +
  coord_flip() +
  geom_hline(aes(yintercept=mean(df$efficiency)), color='red', alpha=0.7, size=2)
```

![](workout01-Jinghua-Wu_files/figure-markdown_github/NBA%20Teams%20ranked%20by%20Total%20Efficiency-1.png)

**NBA Teams ranked by Total Non-Free-Throws**

> NFT represents the scored shots other than free throws. In every previous seasons, audiences caught some players purposely faked free throw attempts that the judges did not catch. To avoid having debatable data in calculating efficiency, NFT eliminated free-throw, which worths one point, in its calculation. In other words, NFT = points - point1.

``` r
# create a horizontal bar plot
NFT = df$points - df$points1
ggplot(df, aes(x=df$Group.1, y=NFT)) +
  labs(title="NBA Teams ranked by Total Non-Free-Throws") +
  ylab('Non-Free-Throws') +
  xlab('Team') +
  geom_bar(stat='identity') +
  coord_flip() +
  geom_hline(aes(yintercept=mean(NFT)), color='red', alpha=0.7, size=2)
```

![](workout01-Jinghua-Wu_files/figure-markdown_github/NBA%20Teams%20ranked%20by%20Total%20Non-Free-Throws-1.png)

Comments and Reflections
------------------------

-   **Was this your first time working on a project with such file structure? If yes, how do you feel about it?**
    No. Labs also dealt with csv files.

-   **Was this your first time using relative paths? If yes, can you tell why they are important for reproducibility purposes?**
    Yes. So that you can put the data files in directories other than the current one without ruining the code.

-   **Was this your first time using an R script? If yes, what do you think about just writing code (without markdown syntax)?**
    Yes. It's like writing python and you don't have to specify which lines are pure text which lines are R codes.

-   **What things were hard, even though you saw them in class/lab?**
    Memorizing the syntax.

-   **What was easy(-ish) even though we haven’t done it in class/lab?**
    N/A

-   **Did anyone help you completing the assignment? If so, who?**
    Yes, my GSI.

-   **How much time did it take to complete this HW?**
    5 hours.

-   **What was the most time consuming part?**
    Writing ReadMe file.

-   **Was there anything interesting?**
    Yes, data aggregation.
