#The lineage was obtained using the following bash code.
LALA=/data/databases/lineage/entry.txt
while read it; do
perl /data/databases/lineage/entrylin.pl $it
done <$LALA
#The UniProt ID was extracted from the headers for each protein in a fasta file using the following bash code.
awk -F '|' '/^>/ {printf(">%s\n",$2);}' entrapmentC98 | cut -c 2- > entry.txt
