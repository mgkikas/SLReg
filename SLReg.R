## Copyright 2015 Michail Gkikas. All Rights Reserved

## The slr function fits a simple linear model to the dataset, 
## plots the regression line and returns an easy to read output of the 
## regression equation along with the correlation between two variables.

## data: a character string with the filename of the csv datafile.

slr <- function(data){
        df <- read.csv(data) 
        print(data.frame(Variables=names(df)))
        cat("\nSelect the response variable")
        respcol <- as.integer(scan(what=character(),nmax=1,quiet=TRUE))
        cat("\nSelect the independent variable")
        indepcol <- as.integer(scan(what=character(),nmax=1,quiet=TRUE))
        resp <- df[[respcol]]
        indep <- df[[indepcol]] 
        df.lm <- lm(resp~indep, data = df)
        plot(indep, resp, 
                      xlab = names(df)[indepcol], 
                      ylab = names(df)[respcol])
        abline(df.lm)
        coef<- coefficients(df.lm)
        print(paste("The regression line is Y =", round(coef[2],2),
                                     "X +", round(coef[1],2)))
        p_val<- cor.test(indep,resp)$p.value
        if (p_val<0.05){
          print(paste("Correlation is statistically signficant (at a=0.05)",
                      "with R =",round(cor.test(indep,resp)$estimate,2)))
        } else{
          print(paste("Correlation is NOT statistically signficant (at a=0.05)",
                      "with R =",round(cor.test(indep,resp)$estimate,2)))
        }   
}