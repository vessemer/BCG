#!/bin/bash

macs2 callpeak -t input/REP1.bam -c control/CONTROL.bam -n REP1 --outdir peaks > peaks/REP1.log 2>&1 &
macs2 callpeak -t input/REP2.bam -c control/CONTROL.bam -n REP2 --outdir peaks > peaks/REP2.log 2>&1 &
macs2 callpeak -t 'input/REP1.bam input/REP2.bam' -c control/CONTROL.bam -q 0.01 -n REPS --outdir peaks > peaks/REPS_all.log 2>&1 &

# Clean blacklisted entries 
bedtools subtract -A -a peaks/REPS_peaks.narrowPeak -b blacklist/hg38.blacklist.bed.gz > peaks/REPS_blacklisted.bed

