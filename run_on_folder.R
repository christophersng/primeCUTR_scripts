library(primeCUTR)

#Specify inputs here
vcf_loc <- "./vcf/" #input folder containing vcf files
output <- "./output/" #output folder for PrimeCUTR output
build <- 38 #which genome build - 37 or 38?
filter <- NULL #replace with a string by which to filter the vcf e.g. PASS
study_name <- "Test_run"

vcf_files <- list.files(vcf_loc,full.names = T)

vcf_files <- grep("\\.vcf$|\\.vcf\\.gz$",vcf_files,value = T)

for(vcf in vcf_files){
  get.orfs(single_input = vcf,
           output = output,
           build = build,
           filter = filter,
           study_id = study_name)
}