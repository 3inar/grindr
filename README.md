# grindr (not a dating app)
Coffee grinder statistics for the Department of Computer Science, University
of Tromsø.

This package contains the following data set:

* `grinder`: Cumulative cup counts from the display on the IFI coffee grinder
  
### use:
```{r}
devtools::install_github("3inar/grindr")

library(grindr)
data(grinder)
head(grinder)
```
