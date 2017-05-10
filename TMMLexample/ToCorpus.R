library(NLP)
library(tm)
library(tmcn)
Sys.setenv(JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home")
library(rJava)
library(SnowballC)
library(slam)
library(Matrix)

#import Data
filenames <- list.files(getwd(),pattern="*.txt")
files <- lapply(filenames,readLines)
docs <- Corpus(VectorSource(files))