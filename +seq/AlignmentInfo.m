%{
# Information about how the demultiplexed reads were aligned and where the output files are stored
align_id                    : smallint unsigned             # unique alignment id
---
-> seq.Genome
folder_name                 : varchar(100)                  # folder name that contains alignment output, i.e. //PatchSeqColumns/star_mm10
config                      : varchar(255)                  # config file used, i.e. '/mnt/kauffman/sandberglab/pipeline3.0/rnaseq.rnaseq-twopassSTAR.conf'
f="no"                      : enum('yes','no','unknown')    # fastqc, was FastQC run on the experiment fastq files?
a="no"                      : enum('yes','no','unknown')    # adaptertrim, was trim_galore run on the expeirment fastq files?
m="no"                      : enum('yes','no','unknown')    # mapreads, were reads mapped to the transcriptome and/or genome?
c="no"                      : enum('yes','no','unknown')    # cufflinks, was cufflinks run the mapped reads?
r="no"                      : enum('yes','no','unknown')    # rpkmforgenes, rpkmforgenes run on the expression levels?
q="no"                      : enum('yes','no','unknown')    # mapquality, was quality control run on the mapped reads?
t="no"                      : enum('yes','no','unknown')    # trinity, was trinity transcriptome reconstruction run on fastq files?
i="no"                      : enum('yes','no','unknown')    # miso, was miso run to estimate inclusion levels?
g="no"                      : enum('yes','no','unknown')    # gsnap, was gsnap run?
l="no"                      : enum('yes','no','unknown')    # sailfish, were RPKMs computed using sailfish?
x="no"                      : enum('yes','no','unknown')    # explore, were explorative/automated analyses run?
d="no"                      : enum('yes','no','unknown')    # cutadapt, was cutadapt run on fastq files?
align_user                  : varchar(25)                   # person who ran alignment
align_date                  : date                          # date alignment was run
%}

classdef AlignmentInfo < dj.Manual
end
