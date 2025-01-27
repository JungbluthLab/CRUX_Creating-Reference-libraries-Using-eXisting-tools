#!/usr/bin/env bash

# Config file for CRUX_release_V1		09-01-2017
# Written by Emily Curd (eecurd@g.ucla.edu) and Gaurav Kandlikar (gkandlikar@ucla.edu)
# Developed at UCLA for the University of California Conservation Consortium's CALeDNA Program



#############################
# Paths to programs / load programs
#############################

DB="/CRUX_Creating-Reference-libraries-Using-eXisting-tools/crux_db"

# load modules
MODULE_SOURCE="" 	#if none, leave empty <- for HPC

#load cutadapt
CUTADAPT="/usr/local/anacapa/miniconda/bin/cutadapt" 		#path to cutadapt binary. see documentation for how to obtain this script

#entrez-qiime
ENTREZ_QIIME="${DB}/scripts/entrez_qiime.py" 						#path to python script. see documentation for how to obtain this script

#ecoPCR
ecoPCR="/usr/local/anacapa/miniconda/bin/ecoPCR"							#path to executable. see documentation for how to obtain this program,

#Load / run BLASTn
LOAD_BLAST="" 												#if none, leave empty <- for HPC
BLASTn_CMD="/ncbi-blast-2.11.0+/bin/blastn" 			#either the path to the blastn executable or just blastn if it is loaded or already in your path


#Load / run Qiime
#QIIME="module load qiime" 								#or what ever code is used to load qiime in a bash shell (e.g. on a mac it might be "macqiime")
QIIME=""

#load bowtie2
#BOWTIE2="module load bowtie2"							#or what ever code is used to load bowtie2 in a bash shell, or path to bowtie2
BOWTIE2="/usr/local/anacapa/miniconda/bin/bowtie2"

#load ATS
#ATS="module load ATS"									#or what ever code is used to load ATS in a bash shell, or path to ATS.  ATS is a Hoffman2 module that allows the user to submit a job on the HPC from within a shell script
ATS=""

###########################
# Paths to reference databases
###########################

#Obitools database folder. Should contain one or more subfolders that contain obitools formatted datbases (e.g. ~/crux_db/Obitools_databases contains EMBL_6162017_std_other, EMBL_6162017_std_pro, EMBL_6162017_std_vert, EMBL_6162017_std_plant.  Each of these subfolders contains the database files with extensions: .sdx, .rdx, and .tdx)
OBI_DB="/mnt/crux_db/Obitools_databases" 							#see documentation for how to build this library

#NCBI taxonomy dump
TAXO="/mnt/crux_db/TAXO" 											#see documentation for how to obtain this directory

#NCBI key for accession number to taxonomy assignment
A2T="/mnt/crux_db/accession2taxonomy/nucl_gb.accession2taxid" 		#see documentation for how to obtain this file

#BLAST db folder.  Should contain many files like the following: nt.00.nhr, nt.00.nin, nt.00.nnd, nt.00.nni, nt.00.nsq, nt.01.nhr, nt.01.nin, nt.01.nnd, nt.01.nni, nt.01.nsq, nt.01.nhr, nt.02.nin,......,......,nt.nal
BLAST_DB="/mnt/crux_db/NCBI_blast_nt/nt"							#see documentation for how to obtain this director

# modify job run / submit Parameters


#QUEUESUBMIT="qsub"
QUEUESUBMIT=""
