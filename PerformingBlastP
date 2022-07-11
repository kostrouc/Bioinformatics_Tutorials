#(For Mac Users Only) Install mini-conda & blast
brew install --cask miniconda
conda activate
conda install -c bioconda blast

#First, index the database you want to search. Do not provide an output name.
makeblastdb -in yourdb.fasta -dbtype prot

#Perform a blastp with desired number of threads
blastp -db yourdb.fasta -query searchfile.fasta -evalue 1 -out yourdb_blastp.tab.out -outfmt 6 -num_threads 100

#evalue default is set to 0
#outfmt 6 returns tab delimited output for easy viewing
#num_threads default is 1
