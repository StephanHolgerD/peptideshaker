from Bio import SeqIO
import sys
input=sys.argv[1]
#input="seqs_for_3_8.fasta.transdecoder.awked.fasta"
output=input+"_decoy.fasta"
with open(output, 'w') as s:
    with open(input) as r:
        for record in SeqIO.parse(r, "fasta"):
            record.seq=record.seq.rstrip("*")
            record.description=record.id
            SeqIO.write(record, s, 'fasta')
            record.seq=record.seq[::-1]
            record.id=record.id+"_REVERSED"
            record.description=record.id
            SeqIO.write(record, s, 'fasta')
