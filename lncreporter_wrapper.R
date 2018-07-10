#!/usr/bin/env Rscript

library(getopt)
library(LncPipeReporter)

#ARGUMENTS
args<-commandArgs(trailingOnly=TRUE)

options<-matrix(c('input', 'i', 1, "character",
                  'output', 'o', 1,"character"),
                   ncol=4, byrow=TRUE)

ret.opts<-getopt(options, args)

input_dir <- ret.opts$input
output_dir <- ret.opts$output

run_reporter(input = input_dir, output_dir = output_dir)