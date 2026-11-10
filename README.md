Task 01 – Sequence Handling

Project Description

This project performs DNA sequence analysis using Perl.

Objective

To read FASTA files and calculate basic DNA sequence properties automatically.

Input Dataset

SARS-CoV-2 genome sequence (NC_045512.2).

Source: "NCBI Database" (https://www.ncbi.nlm.nih.gov/nuccore/NC_045512.2)

Features

- Reads FASTA files using a Perl script.
- Calculates DNA sequence length.
- Counts A, T, G and C nucleotides.
- Calculates GC content percentage.
- Supports multiple sequences.

Programming Language

Perl

How to Run

1. Open Termux.
2. Go to the project folder.
3. Run the following command:

perl sequence_analysis.pl sample.fasta

To analyze another FASTA file:

perl sequence_analysis.pl SARS_CoV_2.txt

Output – SARS-CoV-2

- Sequence Length: 29903
- A: 8954
- T: 9594
- G: 5863
- C: 5492
- GC Content: 37.97%

Files Included

- sequence_analysis.pl – Perl source code
- sample.fasta – Sample input file
- output.txt – Analysis output
- README.md – Project documentation

Author

Pratiksha Kate

Project

UpStartInterns – Task 01: Sequence Handling
