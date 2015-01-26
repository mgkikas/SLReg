### Introduction

The slr function checks the correlation and computes the fitted regression line for a pair of variables
of a dataset in a quick and easy way. The selection of variables is done from a selection menu. 

### Instructions

1. Place the SLReg.R file in your working directory (your csv datafile should also be there)
2. Run source("SLReg.R") from your R console and then type slr("your_datafile.csv")
3. Select the desired response and independent variable from the menu
4. To test a different pair of variables, just run again slr("your_datafile.csv")

### Comments

1. The two selected variables must be continuous
2. The correlation is tested in a significance level a = 0.05