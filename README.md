BioFlow
================

<!-- README.md is generated from README.Rmd. Please edit that file -->

## Introduction

The current package facilitates the work of bioinformaticians with the
help of several functions. It can be used to replicate the central dogma
of molecular biology “DNA -\> RNA -\> protein”.

The package has dependencies on two libraries: ggplot2 and stringr.
Github Repository:
<https://github.com/rforbiodatascience23/group_04_package.git>

## Library Loading

``` r
library(BioFlow)
```

## Functions Description

### NucMerge

The function creates a random sequence of merged nucleotides based on
the user-defined integer number. The input number is the number of the
nucleotides that will be merged.

> Example of function usage:

``` r
nucMerge(10)
#> [1] "CTCCAGAGGG"
```

### TranslateDNA

The function translates DNA sequence into RNA. It takes a DNA string as
an input. The function returns the translated RNA string.

> Example of function usage:

``` r
TranslateDNA("ATCG")
#> [1] "AUCG"
```

### seqToCodon

The function splits the nucleotides in the sequence into the codons of
three. The sequence is given as a string input. It can be used for RNA
and DNA.

> Example of function usage:

``` r
seqToCodons("AUGAGG")
#> [1] "AUG" "AGG"
```

### TranslateCodon

The function translated codons into amino acids. The function takes only
one string of three characters at a time that specifies a codon. The
function result a corresponding amino acid in one letter format.

> Example of function usage:

``` r
TranslateCodon("UUU")
#> [1] "F"
```

### PlotAACount

The function plots amino acid counts based on the string input. It
returns the bar plot in ggplot style with the colours established by the
developers.

> Example of function usage:

``` r
PlotAACount("FFSYCCC")
```

<img src="man/figures/README-unnamed-chunk-7-1.svg" width="100%" />
