library(tidyverse)
library(cowplot)
options(scipen = 999)
library(colorspace)
library(ggridges)

# loading data:
microcin_dist <- read.csv(file = "../../distance_csvs/distance_bw_microcins.csv", header=TRUE, sep=",")
E492 <- read.csv(file = "../../distance_csvs/distances_E492_sp_vs_ecoli_s88.csv", header=TRUE, sep=",")
G492 <- read.csv(file = "../../distance_csvs/distances_G492_tr_vs_ecoli_s88.csv", header=TRUE, sep=",")
H47 <- read.csv(file = "../../distance_csvs/distances_H47_sp_vs_ecoli_s88.csv", header=TRUE, sep=",")
I47 <- read.csv(file = "../../distance_csvs/distances_I47_tr_vs_ecoli_s88.csv", header=TRUE, sep=",")
L <- read.csv(file = "../../distance_csvs/distances_L_tr_vs_ecoli_s88.csv", header=TRUE, sep=",")
M <- read.csv(file = "../../distance_csvs/distances_M_tr_vs_ecoli_s88.csv", header=TRUE, sep=",")
N <- read.csv(file = "../../distance_csvs/distances_N_tr_vs_ecoli_s88.csv", header=TRUE, sep=",")
PDI <- read.csv(file = "../../distance_csvs/distances_PDI_tr_vs_ecoli_s88.csv", header=TRUE, sep=",")
S <- read.csv(file = "../../distance_csvs/distances_S_tr_vs_ecoli_s88.csv", header=TRUE, sep=",")
V <- read.csv(file = "../../distance_csvs/distances_V_sp_vs_ecoli_s88.csv", header=TRUE, sep=",")

