# Bioinformatics_Tutorials
**These tutorials walk through various packages that can assist with omics data processing for bioinformaticians.**


**SCRIPT ONE. HOW TO OBTAIN MULTIPLE PROTEOMES OFF NCBI.ORG & UNIPROT.ORG**

The first script titled "ObtainingProteomesViaCommandLine" will walk you through how to download a single proteome or loop through obtaining thousands of proteomes through the command-line for reference organisms off NCBI.org and Uniprot.org.
The input for this search to be performed can be common name, taxonomic name (family, genus, species), accession, or NCBI taxonomic ids in the form of a text file. It performs the same function as searching directly via the search bar on NCBI.org and UniProt.org. For downloading off NCBI.org the conda package ncbi_datasets is used, which can be obtained at https://www.ncbi.nlm.nih.gov/datasets/docs/v1/quickstarts/command-line-tools/ . You can obtain all the proteomes or just the reference. You can also download genomic datasets. Follow their tutorials for more information related to genomics.

Please cite the creator of this script, the creators of ncbi_datasets & jq, & UniProt.org if you utilized these materials:

Datasets-NCBI [Internet]. Bethesda (MD): National Library of Medicine (US), National Center for Biotechnology Information; 2021 – [cited YYYY Mmm DD]. Available   from: https://www.ncbi.nlm.nih.gov/datasets/

Dolan, K. et. al. (2017). jq. github.org. Available from: https://github.com/stedolan/jq

Ostrouchov, K. (2022). How to obtain multiple proteomes off ncbi.org and uniprot.org. github.org. Available from: https://github.com/kostrouc/Bioinformatics_Tutorials/

(2020) Programmatic access - Downloading data at every UniProt release. UniProt. Available from: https://www.uniprot.org/help/api_downloading
