from Bio import SeqIO
import sys
input=sys.argv[1]
output=input+"_decoy.fasta"
with open(output, 'w') as s:
    with open(input) as r:
        for record in SeqIO.parse(r, "fasta"):
            SeqIO.write(record, s, 'fasta')
            record.seq=record.seq[::-1]
            #record.id=record.id+"_REVERSED"
            record.description=record.description+"_REVERSED"
            SeqIO.write(record, s, 'fasta')
