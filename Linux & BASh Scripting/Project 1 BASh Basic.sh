#!/bin/bash
echo "Francis Kangwa Chanda"

mkdir Francis_Kangwa_Chanda

mkdir biocomputing && cd biocomputing

wget https://raw.githubusercontent.com/HackBio-Internship/Bash_NGS_Starters/refs/heads/main/biocomp_samp/wildtype.fna https://raw.githubusercontent.com/HackBio-Internship/Bash_NGS_Starters/refs/heads/main/biocomp_samp/wildtype.gbk https://raw.githubusercontent.com/HackBio-Internship/Bash_NGS_Starters/refs/heads/main/biocomp_samp/wildtype.gbk

mv wildtype.fna ../Francis_Kangwa_Chanda

rm wildtype.gbk.1

if grep -i "tatatata" ../Francis_Kangwa_Chanda/wildtype.fna; then
    echo "file is Mutant"
else
    echo "file is wildtype"
fi

grep -i "tatatata" ../Francis_Kangwa_Chanda/wildtype.fna > mutant_wildtype.fna

sed -n "/ORIGIN/,/\/\//p" wildtype.gbk | wc -l

awk '/^LOCUS/ {print $3, $4; exit}' wildtype.gbk

awk '/^SOURCE/ {print $2, $3; exit}' wildtype.gbk

grep '/gene=' wildtype.gbk

clear && history

ls ../biocomputing ../Francis_Kangwa_Chanda
