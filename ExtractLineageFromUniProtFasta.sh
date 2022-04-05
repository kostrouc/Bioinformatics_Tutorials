#The UniProt ID was extracted from the headers for each protein in a fasta file using the following bash code.
awk -F '|' '/^>/ {printf(">%s\n",$2);}' myfasta | cut -c 2- > entry.txt

#before was:
#>tr|A2BIS1|A2BIS1_HYPBU Aspartate--tRNA ligase OS=Hyperthermus butylicus (strain DSM 5456 / JCM 9403 / PLM1-5) OX=415426 GN=aspS PE=3 SV=1
#MPLKLRERVYIRDLLEKGVIGNEYTVAGWVDTVRVHGGLVFVVVRDRTGKMQLVVKRNIS
#REAWEHARKLAPESVVAARGRLVESKAALGGRELQVYELEVLNKADPLPIDIYAPDKTTL
#AKRLDWRFLDLRNPRNQLIMRIAAEVARAAREWFVENGFIEIFTPKIVGAATEGGAEVFS
#IVYFDKPAFLAQSPQLYKQMGVIAGLEKVFEIGPAFRAEPHHTTRHLTEYTSIDLEMGFI
#DSYEDVMDIVEAVIRHVISSVLSRYRSEIKEYFPNAITEPPKEIPRITIREAYKLLEAAG
#TPVEWGEDLSSEAERKLGEIVEREYGSYLVFVTEYPWAVRPFYTMRKSDEPDWTYSFDLL
#MRGLEIATGGQREHRYDVLVKQLEEKGLNPRNFEWYLAMFRYGAPPHGGAGIGLERVVMQ
#LLGLGNIREARMLPRDPERLVP

#output is:
#A2BIS1

mkdir lineage
#The lineage was obtained using the following bash code.
LALA=entry.txt
while read it; do
perl entrylin.pl $it
done <$LALA

#output is text file with corresponding id.txt with the following text:
#Entry	Entry name	Organism ID	Taxonomic lineage (ALL)
#A2BIS1	A2BIS1_HYPBU	415426	cellular organisms, Archaea, TACK group, Crenarchaeota, Thermoprotei, Desulfurococcales, Pyrodictiaceae, Hyperthermus, Hyperthermus butylicus, Hyperthermus butylicus (strain DSM 5456 / JCM 9403 / PLM1-5)
