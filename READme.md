# PrimeCUTR: Neopeptide Prediction from Somatic Mutations
This repository contains a wrapper script `run_on_folder.R` and example .vcf files in `./vcf/`
to batch run [PrimeCUTR](https://github.com/christophersng/primeCUTR).

## Usage

The script can be run from command-line with the following command:
```
Rscript run_on_folder.R -i ./vcf/ -o ./example/ -b 38 -s Example_output
```
<br>
NB in Windows, instead of `Rscript`, specify the full path to `Rscript.exe` e.g.

```
path/to/R/bin/Rscript.exe run_on_folder.R -i ./vcf/ -o ./example/ -b 38 -s Example_output
```

<br>

## Inputs

```
-i CHARACTER
    Input folder containing all VCF files to be processed

-o CHARACTER
    Output folder
    
-b NUMERIC
    Reference genome 37 or 38 for GRCh37 or GRCh38 respectively

-f CHARACTER
    Filter vcf FILTER column by a string match e.g. "PASS". No filter applied if NULL or not specified

-s CHARACTER
    Study name
```
