WD=/media/Data/s.siira/tRNA_Phe_RNAseq
TG=/media/Data/tools/TrimGalore/TrimGalore-0.6.5/trim_galore

for SAMPLE in 1_H2G73DSXY_CCGCGGTT-AGCGCTAG 2_H2G73DSXY_TTATAACC-GATATCGA 3_H2G73DSXY_GGACTTGG-CGCAGACG 4_H2G73DSXY_AAGTCCAA-TATGAGTA 5_H2G73DSXY_ATCCACTG-AGGTGCGT 6_H2G73DSXY_GCTTGTCA-GAACATAC 7_H2G73DSXY_CAAGCTAG-ACATAGCG 8_H2G73DSXY_TGGATCGA-GTGCGATA 9_H2G73DSXY_AGTTCAGG-CCAACAGA 10_H2G73DSXY_GACCTGAA-TTGGTGAG 11_H2G73DSXY_TCTCTACT-CGCGGTTC 12_H2G73DSXY_CTCTCGTC-TATAACCT 13_H2G73DSXY_CCAAGTCT-AAGGATGA 14_H2G73DSXY_TTGGACTC-GGAAGCAG 15_H2G73DSXY_GGCTTAAG-TCGTGACC 16_H2G73DSXY_AATCCGGA-CTACAGTT 17_H2G73DSXY_TAATACAG-ATATTCAC 18_H2G73DSXY_CGGCGTGA-GCGCCTGT 19_H2G73DSXY_ATGTAAGT-ACTCTATG 20_H2G73DSXY_GCACGGAC-GTCTCGCA 21_H2G73DSXY_GGTACCTT-AAGACGTC 22_H2G73DSXY_AACGTTCC-GGAGTACT 23_H2G73DSXY_GCAGAATT-ACCGGCCA 24_H2G73DSXY_ATGAGGCC-GTTAATTG
do
	for REP in L002 L003
	do
		OUTDIR=$WD/pipeline/1_trimming/${SAMPLE}
		DATA=$WD/data
		R1=$DATA/${SAMPLE}_${REP}_R1.fastq.gz
		R2=$DATA/${SAMPLE}_${REP}_R2.fastq.gz

		mkdir $OUTDIR
		$TG --paired --fastqc --illumina -o $OUTDIR $R1 $R2
	done
done

