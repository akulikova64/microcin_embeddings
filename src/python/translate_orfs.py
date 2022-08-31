from Bio import SeqIO
from Bio.Seq import Seq
import sys

# this script translates the orfs made by orfipy

# the following command was used to find orfs in genome:
# orfipy ./genomes/Ecoli_S88.fna --dna e_coli_orfs.fasta --outdir ./ORFs_ecoli_s88
# orfipy ./genomes/klebsiella_pneumoniae_E492.fna --dna k_pneumoniae_orfs.fasta --outdir ./ORFs_kpneimoniae

input_file = "./ORFs_kpneimoniae/k_pneumoniae_orfs.fasta"
output_file = "./ORFs_kpneimoniae/protein_k_pneumoniae_orfs.fasta"

orfs_fasta = list(SeqIO.parse(input_file, "fasta"))
exceptions = []

with open(output_file, "w") as protein_seq_file:
    for rec in orfs_fasta:
        dna_sequence = str(rec.seq)
        dna_sequence = Seq(dna_sequence)
        orf_name = str(rec.description)

        # translating dna sequence into protein sequence:
        protein_seq = dna_sequence.translate(to_stop=True)
        protein_seq = str(protein_seq)

        # writing to new fasta file:
        if len(protein_seq) <= 150 & len(protein_seq) >= 30:
            protein_seq_file.write(">" + orf_name + "\n")
            protein_seq_file.write(protein_seq + "\n")

print("Done!")