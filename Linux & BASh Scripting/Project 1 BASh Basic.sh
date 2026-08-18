#Project 1: BASh Basic
echo "Francis Kangwa Chanda"

mkdir Francis_Kangwa_Chanda

mkdir biocomputing && cd biocomputing

wget https://raw.githubusercontent.com/HackBio-Internship/Bash_NGS_Starters/refs/heads/main/biocomp_samp/wildtype.fna
wget https://raw.githubusercontent.com/HackBio-Internship/Bash_NGS_Starters/refs/heads/main/biocomp_samp/wildtype.gbk
wget https://raw.githubusercontent.com/HackBio-Internship/Bash_NGS_Starters/refs/heads/main/biocomp_samp/wildtype.gbk

mv wildtype.fna ../Francis_Kangwa_Chanda

rm wildtype.gbk.1

cd ../Francis_Kangwa_Chanda
grep -i "tatatata" wildtype.fna 
#The results indicate its a muntant

grep -i "tatatata" wildtype.fna > mutant_wildtype.fna

cd ../biocomputing
sed -n "/ORIGIN/,/\/\//p" wildtype.gbk | wc -l

awk '/^LOCUS/ {print $3, $4; exit}' wildtype.gbk

awk '/^SOURCE/ {print $2, $3; exit}' wildtype.gbk

grep '/gene=' wildtype.gbk

clear && history

cd ../
ls biocomputing Francis_Kangwa_Chanda