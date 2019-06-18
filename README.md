### Note, while it is possible to sequence these libraries on the HiSeq 4000, yields are still low and not much improved over the 2500, so Carly recommends selecting your platform by price.

Genome-wide gene expression profiling with tag-based RNA-seq (TagSeq) - version Kenkel Lab
------------------------------------------------------------

Carly Kenkel, ckenkel@usc.edu, originated by M. Matz matz@utexas.edu

Tag-based RNA-seq is a method of measuring expression of eukaryotic protein-coding genes on a whole-genome scale. Compared to standard RNA-seq it is very cost-efficient (on the order of $50/sample, all inclusive), allowing extensive experimental designs. The method, however, requires a reference (transcriptome or genome) to map reads to.  

The method was described in Meyer, Aglyamova and Matz, Mol Ecol 2011 ( http://bit.ly/1Zy8Ki7 ). Since then it has been adapted for Illumina sequencing, lab procedures have been further simplified, and removal of PCR duplicates has been implemented.

Lohman et al extensively benchmarked TagSeq against standard RNA-seq (NEBNext) and found that tag-seq quantifies transcript abndances more accurately, for about 10% of the cost: http://onlinelibrary.wiley.com/doi/10.1111/1755-0998.12529/abstract

This project provides the up-to-date wet lab protocol (TagSeq_sample_prep_sep2018_ckedits.pdf), scripts and walkthoughs (5_Quality...pdf and 6_Mapping...pdf) for initial sequence data processing (from reads to gene counts), including:
- concatenating raw sequence files according to the sampling design;
- adaptor trimming, quality filtering and removal of PCR duplicates;
- mapping against reference transcriptome;
- deriving gene counts.

Note that job submission scripts will need to be modified to suit the scheduler in use on your HPC.

If not already available on your HPC system, you will need to also install the following softwares:
- fastx_toolkit http://hannonlab.cshl.edu/fastx_toolkit/
- BBMap https://sourceforge.net/projects/bbmap/
- cd-hit http://weizhongli-lab.org/cd-hit/
- SHRiMP http://compbio.cs.toronto.edu/shrimp/ or bowtie2 http://bowtie-bio.sourceforge.net/bowtie2/index.shtml

Example data (...test.fasq) and reference files (.fas and seq2iso.tab) are also included for the purposes of troubleshooting the walkthrough on your own HPC system. 
