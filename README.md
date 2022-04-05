# Bioinformatics_Tutorials
**These tutorials walk through various packages that can assist with omics data processing for bioinformaticians.**


**SCRIPT ONE. HOW TO OBTAIN MULTIPLE PROTEOMES OFF NCBI.ORG & UNIPROT.ORG**

The first script titled "ObtainingProteomesViaCommandLine.Rmd" walks through how to download a single proteome or loop through obtaining thousands of proteomes via the command-line for organisms off NCBI.org and Uniprot.org.
The input for this search to be performed can be common name, taxonomic name (family, genus, species), accession, or NCBI taxonomic ids in the form of a text file. It performs the same function as searching directly via the search bar on NCBI.org and UniProt.org. For downloading off NCBI.org the conda package ncbi_datasets is used, which can be obtained at https://www.ncbi.nlm.nih.gov/datasets/docs/v1/quickstarts/command-line-tools/ . All proteomes can be obtained or just the references. Genomic datasets can also be downloaded. Follow their tutorials for more information related to genomics.

**SCRIPT TWO. REFORMATTING CD-HIT CLUSTER FILES TO OBTAIN PROTEINS WITH >0 CLUSTERS**

This second script titled "ParseClstrViaCommandLine.Rmd" walks through how to reformat a .clstr file obtained after performing a cd-hit job. It utilizes an R script to reformat the file such that each cluster is named on the line with it's percent sequence identity. It retains only those protein headers that had >0 clusters (meaning it keeps the lines with '*' and '%') and produces the fileparsed output. It then writes the names of each of the duplicate clusters to a file and removes duplicates generating the filedup output. This filedup output is then used to search for these specific clusters in the fileparsed output which then outputs a final fileredundancy.txt file. The redundancy file can be used to match headers using grep after searching mass spectra against a database where redundancy was removed using cd-hit to identify the sequences that match more than one protein/organism. R script utilizes a modified version for rna seq files created by Robert Murdoch in 2018 obtained from https://rpubs.com/rmurdoch/cdhit_to_mapping_file.

**SCRIPT THREE. OBTAIN UNIPROT TAXONOMIC LINEAGE FOR EACH PROTEIN IN A FASTA FILE**

This third script titled "ObtainUniProtProteinTaxonomicLineage.sh" will walk through how to obtain a list of the UniProt ids from the headers in a fasta file, and it will obtain the taxonomic lineage associated with each protein id in that file.

Citation:

Ostrouchov, K. (2022). Bioinformatic_Tutorials. github.org. Available from: https://github.com/kostrouc/Bioinformatics_Tutorials/

References: 

Datasets-NCBI [Internet]. Bethesda (MD): National Library of Medicine (US), National Center for Biotechnology Information; 2021 – [cited 2022 01 15]. Available   from: https://www.ncbi.nlm.nih.gov/datasets/

Dolan, K. et. al. (2017). jq. github.org. Available from: https://github.com/stedolan/jq

Murdoch, R. (2018) cluster.mapping.rmd. rpubs.com. Available from: https://rpubs.com/rmurdoch/cdhit_to_mapping_file

Ostrouchov, K., Dondrup, M. (2022). Batch Download Reference Proteomes from UniProt with Unix and Perl Example. Biostars.org. Available from: https://www.biostars.org/p/9505831/#9506542

Ostrouchov, K., vkkodali, GenoMax. (2022). Parse JSON ncbi_datasets summary output. Biostars.org. Available from: https://www.biostars.org/p/9505334/#9505490

Parnell LD, Lindenbaum P, Shameer K, Dall'Olio GM, Swan DC, et al. (2011) BioStar: An Online Question & Answer Resource for the Bioinformatics Community. PLoS Comput Biol 7(10): e1002216.

(2020) Programmatic access - Downloading data at every UniProt release. UniProt.org . Available from: https://www.uniprot.org/help/api_downloading
