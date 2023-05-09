#!/bin/env/bash
set -euo pipefail

grep -v "^#" ../../results/APC_mut.vcf | \
cut -f 1-5 | \
sed -e 's/chr//' | \
awk 'BEGIN { OFS = "\t"} { $2+=112702498; print $0}' > \
../../results/APC_mut_processed.vcf
