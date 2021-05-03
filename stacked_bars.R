##This is an R script designed to perform visualization of stacked bars
Laboratory <- c("MaKCHS", "UVRI")
Lineage <- c("A", "B")
LineageA <- c(22, 222)
LineageB <- c(6, 106)
raw <- cbind(LineageA, LineageB)
#row.names(raw) <- c("MaKCHS", "UVRI")
class(raw)
raw <- as.data.frame(raw)
raw <- cbind(Laboratory, raw)
library(ggplot2)
library(tidyverse)
raw <- raw %>% gather(key = "Lineage", value = "Number", -Laboratory)
raw
ggplot(raw, aes(fill=Lineage, y=Number, x=Laboratory)) + 
  geom_bar(position="dodge", stat="identity") + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
                                                      panel.background = element_blank(), axis.line = element_line(colour = "black"))

