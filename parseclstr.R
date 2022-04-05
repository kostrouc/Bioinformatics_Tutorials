#Parsing the clstr cd-hit mapping file
#by Katie Ostrouchov
#April 5th, 2022

#How to run script in commandline
#Rscript --vanilla parseclstr.R mycdhitfastaC98.clstr outputfilename

args = commandArgs(trailingOnly=TRUE)
# test if there is at least one argument: if not, return an error
if (length(args)==0) {
  stop("At least one argument must be supplied (input file).n", call.=FALSE)
} else if (length(args)==1)

####Start of code
#install.packages("stringr")
#install.packages("dplyr")
#install.packages("rlang")
library(rlang)
library(dplyr)
library(stringr)

### this is a modified version obtain from Robert Murdoch (2018) from https://rpubs.com/rmurdoch/cdhit_to_mapping_file

clstr <- read.csv(args[[1]], sep = "\t", row.names = NULL, header = FALSE, stringsAsFactors = FALSE)
clstr2 <- clstr
n = nrow(clstr)
x = 0
numbers_only <- function(x) !grepl("\\D", x)
for (row in c(1:n)) {
  if (numbers_only(clstr2[row,1]) == TRUE) {
    clstr2[row,1] <- x}
  else {NULL}
  x <- clstr2[row,1]
}
clstr.sums <- data.frame(dplyr::count(clstr2,V1))
switch <- clstr.sums[1,2]
clstr3 <- cbind(clstr2[1], clstr)
clstr4 <- clstr2[-which(clstr2$V2 == ""), ]
clstr5 <- clstr4
clstr5[] <- lapply(clstr5, gsub, pattern='>', replacement='')
clstr5.2 <- data.frame(str_split_fixed(clstr5$V2, "aa, ", 2))
clstr5.3 <- data.frame(str_split_fixed(clstr5.2$X2, "... ", 2))
clstr6 <- cbind(clstr5[1],clstr5.3[1:2])

###Now write the output clustr6 to file
write.table(clstr6, args[[2]], sep = "\t")
