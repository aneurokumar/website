---
public: true
title: 
tags:
  - shell
  - scrnaseq
  - bioinfo
  - genomics
created: 2024-11-02
last-modified: 2025-02-26
---
**Related**: [[./how to download bioinformatics data example - FASTq files from scRNA-seq|how to download bioinformatics data example - FASTq files from scRNA-seq]]  
  
---  
  
1. go to 10x genomics/go to the 10x downloads website  
2. copy the cellranger binary for either curl or wget and paste it in your terminal  
3. go back to the downloads page and get the references that you need, paste it into the terminal  
	1. if the data is from humans, you'd get the human references; from mice, the mice dataset, etc.  
	2. another organism = need to build your own custom 10x  
4. open the cellranger file and then open the ref-file as well  
5. you can free up space by using `rm *.gz` to remove all gz files (which are similar to ZIP files) i.e. compressed files  
![[./installing and running cellranger for 10x datasets2024-11_02.png|500]]  
6. use `ls` to make sure you have those files downloaded properly  
7. verify file names, the nomenclature has to be specific otherwise it won't work correctly  
	1. the highlighted section below are the read names from the files, in this section it comes off of an illumina sequencer  
	2. if you're getting it from an open database or somewhere else, there's a chance that your file names are different so you'll either have to look for the original file names or just guess...![[./installing and running cellranger for 10x datasets2024-11_02-1.png|500]]  
8. you need to point to the actual binary for cellranger in order for it to work. then need to point it to the downloaded data, then the ref data  
```bash  
cellranger-7.2(V. number etc.)/cellranger count --id tutorial_sample --transcriptome refdata-gex-GRCh38-2020-A/ --fastqs Sample_V_I_48_3 --(sample prefix) --expect-cell 10000 --localcore 20 --localmem 100  
```  
* localcore and localmem - the higher the numbers, the less time it will take. depends on your computer specs  
	* even with this a sample can take up to 1 hour per sample  
* transcriptome is the reference directory  
* fastqa is the directory containg the FASTA and FASTQ  
* expect-cells will show you around the amount of cells present when you did the wetlab experiment. never an exact number, aim for ballpark for when they formed the single-cell suspension (10,000)  
9. once it's done, can check the `web_summary.html`  
	1. if you ran it with a remote server, you'd have to download the files  
	2. whatever `--id `directory you've created (in this example it is `tutorial_sample`), is the one where all the outputs are going to be stored in  
```bash  
firefox tutorial_sample/outs/web_summary.html  
```  
  
![[./installing and running cellranger for 10x datasets2024-11_02-2.png|installing and running cellranger for 10x datasets2024-11_02-2.png]]  
  
  
## references/links?  
* [Installing and running Cell Ranger on 10x single-cell RNAseq data - YouTube](https://www.youtube.com/watch?v=6heXkouNZpk)  
