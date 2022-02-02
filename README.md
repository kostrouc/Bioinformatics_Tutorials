# Bioinformatics_Tutorials
**These tutorials walk through various packages that can assist with omics data processing for bioinformaticians.**


**SCRIPT ONE. HOW TO OBTAIN MULTIPLE PROTEOMES OFF NCBI.ORG & UNIPROT.ORG**

The first script titled "ObtainingProteomesViaCommandLine" walks through how to download a single proteome or loop through obtaining thousands of proteomes via the command-line for organisms off NCBI.org and Uniprot.org.
The input for this search to be performed can be common name, taxonomic name (family, genus, species), accession, or NCBI taxonomic ids in the form of a text file. It performs the same function as searching directly via the search bar on NCBI.org and UniProt.org. For downloading off NCBI.org the conda package ncbi_datasets is used, which can be obtained at https://www.ncbi.nlm.nih.gov/datasets/docs/v1/quickstarts/command-line-tools/ . All proteomes can be obtained or just the references. Genomic datasets can also be downloaded. Follow their tutorials for more information related to genomics.

Citation:

Ostrouchov, K. (2022). How to obtain multiple proteomes off ncbi.org and uniprot.org. github.org. Available from: https://github.com/kostrouc/Bioinformatics_Tutorials/

References: 

Datasets-NCBI [Internet]. Bethesda (MD): National Library of Medicine (US), National Center for Biotechnology Information; 2021 – [cited 2022 01 15]. Available   from: https://www.ncbi.nlm.nih.gov/datasets/

Dolan, K. et. al. (2017). jq. github.org. Available from: https://github.com/stedolan/jq

Ostrouchov, K., Dondrup, M. (2022). Batch Download Reference Proteomes from UniProt with Unix and Perl Example. Biostars.org. Available from: https://www.biostars.org/p/9505831/#9506542

Ostrouchov, K., vkkodali, GenoMax. (2022). Parse JSON ncbi_datasets summary output. Biostars.org. Available from: https://www.biostars.org/p/9505334/#9505490

Parnell LD, Lindenbaum P, Shameer K, Dall'Olio GM, Swan DC, et al. (2011) BioStar: An Online Question & Answer Resource for the Bioinformatics Community. PLoS Comput Biol 7(10): e1002216.

(2020) Programmatic access - Downloading data at every UniProt release. UniProt.org . Available from: https://www.uniprot.org/help/api_downloading
