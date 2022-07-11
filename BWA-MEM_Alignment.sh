#Step One. Download your SRA datasets
mkdir ~/sradrop/sralist.txt
cat > sralist.txt
SRR650909	
SRR611311
SRR505582
SRR611332
SRR505585
SRR611338
SRR505581
SRR611339
SRR505587
SRR505584
control^D

#(Mac users)
brew install parallel #allows multiple cores to be utlized when downloading many files
parallel -j 8 \
/Users/me/sratoolkit.2.11.1-mac64/bin/fastq-dump{}\;gzip \
/Users/me/sradrop ::: $(sralist.txt)

#(Other Linux users)
for sras in $(<sralist.txt); do
	/Users/me/sratoolkit.2.11.1-mac64/bin/fastq-dump{}\;gzip $sra1 -O . & \
done \
wait

#Step Two. Install bwa and sratoolkit

#(Mac users)
brew install bwa
brew install sratoolkit

#Step Three. Index your reference genomes
time bwa index othergenome.fasta #time allows you to see how long the process took to complete

#Step Four. Perform a bwa mem alignment for genomes with high repetition (such as eukaryotes, maize, etc..)
time bwa mem othergenome.fasta yourgenome.fq.gz | gzip -3 > aln-othervsyour.sam.gz

#Step Five. Convert bwa mem .sam to .bam file format
gunzip aln-othervsyour.sam.gz
samtools view -S -b aln-othervsyour.sam > aln-othervsyour.bam

#Step Six. Sort .bam file
time samtools sort algn-othervsyour.bam -o algn-othervsyour.sorted.bam

#Step Seven. Interpret results

#Counting the Total Number of alignments
samtools view -c algn-othervsyour.sorted.bam
#Counting Mapped Reads
samtools view -c -F 260 algn-othervsyour.sorted.bam
#Counting Unmapped Reads
samtools view -c -f 260 algn-othervsyour.sorted.bam
#Counting Percent Mapped Reads
samtools flagstat algn-othervsyour.sorted.bam
