#!/usr/bin/Rscript --vanilla
# Setup -----------------------------------------------------------------------
library(primeCUTR)

args <- commandArgs(trailingOnly=TRUE)

#function to add argument flag functionality to command line
arg <- function(alternative,flag){
  if(length(args)==0){
    return(alternative)
  } else if (flag%in%args&length(grep(flag,args))==1&length(args)>which(args==flag)[1]) {
    return(args[grep(flag,args)+1])
  } else {
    return(NULL)
  }
}

# Inputs ----------------------------------------------------------------------
# For interactive running, simply replace the first argument of each variable
# e.g. vcf_loc <- arg("~/another_location/","-i")
vcf_loc <- arg("./vcf/","-i") #input folder containing vcf files
output <- arg("./output/","-o") #output folder for PrimeCUTR output
build <- arg(38,"-b") #which genome build - 37 or 38?
filter <- arg(NULL,"-f") #replace with a string by which to filter the vcf e.g. PASS
study_name <- arg("Test_run","-s")

# Running ---------------------------------------------------------------------
vcf_files <- list.files(vcf_loc,full.names = T)

vcf_files <- grep("\\.vcf$|\\.vcf\\.gz$",vcf_files,value = T)

for(vcf in vcf_files){
  get.orfs(single_input = vcf,
           output = output,
           build = build,
           filter = filter,
           study_id = study_name)
}