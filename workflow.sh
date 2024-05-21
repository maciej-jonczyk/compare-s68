# Based on DNA-sequencing workflow from https://github.com/maciej-jonczyk/network-ala/blob/main/map-pl.sh
# Except snpEff all software versions are as in above link
# Individual steps used different number of cores as analysis has been done on different computers

# Sequencing data has been provided with QC in FastQC - no sample require trimming

# 1. Mapping with read-group idntification (all files have the same SM field - it was later changed to allow separate analysis of samples)
# 2024_02_28.map level

~/bin/bwa-mem2-2.2.1_x64-linux/bwa-mem2 mem -t8 -T30 \
-R "@RG\tID:16_p1\tLB:16_p1\tPL:illumina\tSM:s68911\tPU:H3N5LDSXC.1.GTAACATC+NATCGCTG" \
/media/mj/Seagate\ Backup\ Plus\ Drive/NAMv5/Zm-B73-REFERENCE-NAM-5.0.fa \
/media/mj/Expansion/2024_02_28/raw_data/16_p1_S60_R1_001.fastq.gz \
/media/mj/Expansion/2024_02_28/raw_data/16_p1_S60_R2_001.fastq.gz \
 | ~/bin/samtools-1.17/samtools view -bo 16_p1.bam

~/bin/bwa-mem2-2.2.1_x64-linux/bwa-mem2 mem -t8 -T30 \
-R "@RG\tID:16_p2\tLB:16_p2\tPL:illumina\tSM:s68911\tPU:H3N5LDSXC.1.CAGCGGTA+NCAAGTCA" \
/media/mj/Seagate\ Backup\ Plus\ Drive/NAMv5/Zm-B73-REFERENCE-NAM-5.0.fa \
/media/mj/Expansion/2024_02_28/raw_data/16_p2_S65_R1_001.fastq.gz \
/media/mj/Expansion/2024_02_28/raw_data/16_p2_S65_R2_001.fastq.gz \
 | ~/bin/samtools-1.17/samtools view -bo 16_p2.bam

~/bin/bwa-mem2-2.2.1_x64-linux/bwa-mem2 mem -t8 -T30 \
-R "@RG\tID:16_p3\tLB:16_p3\tPL:illumina\tSM:s68911\tPU:H3N5LDSXC.1.GCCTAGCC+NAGACCAA" \
/media/mj/Seagate\ Backup\ Plus\ Drive/NAMv5/Zm-B73-REFERENCE-NAM-5.0.fa \
/media/mj/Expansion/2024_02_28/raw_data/16_p3_S70_R1_001.fastq.gz \
/media/mj/Expansion/2024_02_28/raw_data/16_p3_S70_R2_001.fastq.gz \
 | ~/bin/samtools-1.17/samtools view -bo 16_p3.bam

~/bin/bwa-mem2-2.2.1_x64-linux/bwa-mem2 mem -t8 -T30 \
-R "@RG\tID:18_p1\tLB:18_p1\tPL:illumina\tSM:s68911\tPU:H3N5LDSXC.1.AGGTAAGG+NAATCGTG" \
/media/mj/Seagate\ Backup\ Plus\ Drive/NAMv5/Zm-B73-REFERENCE-NAM-5.0.fa \
/media/mj/Expansion/2024_02_28/raw_data/18_p1_S61_R1_001.fastq.gz \
/media/mj/Expansion/2024_02_28/raw_data/18_p1_S61_R2_001.fastq.gz \
 | ~/bin/samtools-1.17/samtools view -bo 18_p1.bam

~/bin/bwa-mem2-2.2.1_x64-linux/bwa-mem2 mem -t8 -T30 \
-R "@RG\tID:18_p2\tLB:18_p2\tPL:illumina\tSM:s68911\tPU:H3N5LDSXC.1.CGCCTTCC+NAGTCCGC" \
/media/mj/Seagate\ Backup\ Plus\ Drive/NAMv5/Zm-B73-REFERENCE-NAM-5.0.fa \
/media/mj/Expansion/2024_02_28/raw_data/18_p2_S66_R1_001.fastq.gz \
/media/mj/Expansion/2024_02_28/raw_data/18_p2_S66_R2_001.fastq.gz \
 | ~/bin/samtools-1.17/samtools view -bo 18_p2.bam

~/bin/bwa-mem2-2.2.1_x64-linux/bwa-mem2 mem -t8 -T30 \
-R "@RG\tID:18_p3\tLB:18_p3\tPL:illumina\tSM:s68911\tPU:H3N5LDSXC.1.GACCAGGA+NTAGCCAG" \
/media/mj/Seagate\ Backup\ Plus\ Drive/NAMv5/Zm-B73-REFERENCE-NAM-5.0.fa \
/media/mj/Expansion/2024_02_28/raw_data/18_p3_S71_R1_001.fastq.gz \
/media/mj/Expansion/2024_02_28/raw_data/18_p3_S71_R2_001.fastq.gz \
 | ~/bin/samtools-1.17/samtools view -bo 18_p3.bam

~/bin/bwa-mem2-2.2.1_x64-linux/bwa-mem2 mem -t8 -T30 \
-R "@RG\tID:19_p1\tLB:19_p1\tPL:illumina\tSM:s68911\tPU:H3N5LDSXC.1.ACAGGTAT+NTGGTGGC" \
/media/mj/Seagate\ Backup\ Plus\ Drive/NAMv5/Zm-B73-REFERENCE-NAM-5.0.fa \
/media/mj/Expansion/2024_02_28/raw_data/19_p1_S62_R1_001.fastq.gz \
/media/mj/Expansion/2024_02_28/raw_data/19_p1_S62_R2_001.fastq.gz \
 | ~/bin/samtools-1.17/samtools view -bo 19_p1.bam

~/bin/bwa-mem2-2.2.1_x64-linux/bwa-mem2 mem -t8 -T30 \
-R "@RG\tID:19_p2\tLB:19_p2\tPL:illumina\tSM:s68911\tPU:H3N5LDSXC.1.CAATAGTC+NTGAGCTG" \
/media/mj/Seagate\ Backup\ Plus\ Drive/NAMv5/Zm-B73-REFERENCE-NAM-5.0.fa \
/media/mj/Expansion/2024_02_28/raw_data/19_p2_S67_R1_001.fastq.gz \
/media/mj/Expansion/2024_02_28/raw_data/19_p2_S67_R2_001.fastq.gz \
 | ~/bin/samtools-1.17/samtools view -bo 19_p2.bam

~/bin/bwa-mem2-2.2.1_x64-linux/bwa-mem2 mem -t8 -T30 \
-R "@RG\tID:19_p3\tLB:19_p3\tPL:illumina\tSM:s68911\tPU:H3N5LDSXC.1.CAGCAAGG+NTTAGAGG" \
/media/mj/Seagate\ Backup\ Plus\ Drive/NAMv5/Zm-B73-REFERENCE-NAM-5.0.fa \
/media/mj/Expansion/2024_02_28/raw_data/19_p3_S72_R1_001.fastq.gz \
/media/mj/Expansion/2024_02_28/raw_data/19_p3_S72_R2_001.fastq.gz \
 | ~/bin/samtools-1.17/samtools view -bo 19_p3.bam

~/bin/bwa-mem2-2.2.1_x64-linux/bwa-mem2 mem -t8 -T30 \
-R "@RG\tID:20_p1\tLB:20_p1\tPL:illumina\tSM:s68911\tPU:H3N5LDSXC.1.AATGTTCT+NGGTGACT" \
/media/mj/Seagate\ Backup\ Plus\ Drive/NAMv5/Zm-B73-REFERENCE-NAM-5.0.fa \
/media/mj/Expansion/2024_02_28/raw_data/20_p1_S63_R1_001.fastq.gz \
/media/mj/Expansion/2024_02_28/raw_data/20_p1_S63_R2_001.fastq.gz \
 | ~/bin/samtools-1.17/samtools view -bo 20_p1.bam

~/bin/bwa-mem2-2.2.1_x64-linux/bwa-mem2 mem -t8 -T30 \
-R "@RG\tID:20_p2\tLB:20_p2\tPL:illumina\tSM:s68911\tPU:H3N5LDSXC.1.ATTATCAA+NAGAGTCG" \
/media/mj/Seagate\ Backup\ Plus\ Drive/NAMv5/Zm-B73-REFERENCE-NAM-5.0.fa \
/media/mj/Expansion/2024_02_28/raw_data/20_p2_S68_R1_001.fastq.gz \
/media/mj/Expansion/2024_02_28/raw_data/20_p2_S68_R2_001.fastq.gz \
 | ~/bin/samtools-1.17/samtools view -bo 20_p2.bam

~/bin/bwa-mem2-2.2.1_x64-linux/bwa-mem2 mem -t8 -T30 \
-R "@RG\tID:20_p3\tLB:20_p3\tPL:illumina\tSM:s68911\tPU:H3N5LDSXC.1.CGTTACCA+NAGCGTTC" \
/media/mj/Seagate\ Backup\ Plus\ Drive/NAMv5/Zm-B73-REFERENCE-NAM-5.0.fa \
/media/mj/Expansion/2024_02_28/raw_data/20_p3_S73_R1_001.fastq.gz \
/media/mj/Expansion/2024_02_28/raw_data/20_p3_S73_R2_001.fastq.gz \
 | ~/bin/samtools-1.17/samtools view -bo 20_p3.bam

~/bin/bwa-mem2-2.2.1_x64-linux/bwa-mem2 mem -t8 -T30 \
-R "@RG\tID:22_p1\tLB:22_p1\tPL:illumina\tSM:s68911\tPU:H3N5LDSXC.1.TCTGCAAG+NAGGTGAA" \
/media/mj/Seagate\ Backup\ Plus\ Drive/NAMv5/Zm-B73-REFERENCE-NAM-5.0.fa \
/media/mj/Expansion/2024_02_28/raw_data/22_p1_S64_R1_001.fastq.gz \
/media/mj/Expansion/2024_02_28/raw_data/22_p1_S64_R2_001.fastq.gz \
 | ~/bin/samtools-1.17/samtools view -bo 22_p1.bam

~/bin/bwa-mem2-2.2.1_x64-linux/bwa-mem2 mem -t8 -T30 \
-R "@RG\tID:22_p2\tLB:22_p2\tPL:illumina\tSM:s68911\tPU:H3N5LDSXC.1.CCAACATT+NAGAGAGC" \
/media/mj/Seagate\ Backup\ Plus\ Drive/NAMv5/Zm-B73-REFERENCE-NAM-5.0.fa \
/media/mj/Expansion/2024_02_28/raw_data/22_p2_S69_R1_001.fastq.gz \
/media/mj/Expansion/2024_02_28/raw_data/22_p2_S69_R2_001.fastq.gz \
 | ~/bin/samtools-1.17/samtools view -bo 22_p2.bam

~/bin/bwa-mem2-2.2.1_x64-linux/bwa-mem2 mem -t8 -T30 \
-R "@RG\tID:22_p3\tLB:22_p3\tPL:illumina\tSM:s68911\tPU:H3N5LDSXC.1.TCCAGCAA+NGCCAATT" \
/media/mj/Seagate\ Backup\ Plus\ Drive/NAMv5/Zm-B73-REFERENCE-NAM-5.0.fa \
/media/mj/Expansion/2024_02_28/raw_data/22_p3_S74_R1_001.fastq.gz \
/media/mj/Expansion/2024_02_28/raw_data/22_p3_S74_R2_001.fastq.gz \
 | ~/bin/samtools-1.17/samtools view -bo 22_p3.bam

# 2. bamQC, split to three pararell analyses
# new form of loop was used which added prefix to input name to create output file

for file in *1.bam; do \
~/bin/BamQC-master/bin/bamqc \
$file \
--threads 4 \
-f /home/mj/NAMv5/Zea_mays.Zm-B73-REFERENCE-NAM-5.0.55.chr.gtf \
-o bamqc-raw; done &
for file in *2.bam; do \
~/bin/BamQC-master/bin/bamqc \
$file \
--threads 4 \
-f /home/mj/NAMv5/Zea_mays.Zm-B73-REFERENCE-NAM-5.0.55.chr.gtf \
-o bamqc-raw; done &
for file in *3.bam; do \
~/bin/BamQC-master/bin/bamqc \
$file \
--threads 4 \
-f /home/mj/NAMv5/Zea_mays.Zm-B73-REFERENCE-NAM-5.0.55.chr.gtf \
-o bamqc-raw; done

# 3. Quality filtering
# 2024_02_28.map level

for i in *.bam; do \
~/bin/samtools-1.20/samtools view -@4 -bq30 \
$i \
-o q30/q30.$i; done

# 4. bamQC
# q30 level

for file in *1.bam; do \
~/bin/BamQC-master/bin/bamqc \
$file \
--threads 4 \
-f /home/mj/NAMv5/Zea_mays.Zm-B73-REFERENCE-NAM-5.0.55.chr.gtf \
-o ../bamqc-q30; done &
for file in *2.bam; do \
~/bin/BamQC-master/bin/bamqc \
$file \
--threads 4 \
-f /home/mj/NAMv5/Zea_mays.Zm-B73-REFERENCE-NAM-5.0.55.chr.gtf \
-o ../bamqc-q30; done &
for file in *3.bam; do \
~/bin/BamQC-master/bin/bamqc \
$file \
--threads 4 \
-f /home/mj/NAMv5/Zea_mays.Zm-B73-REFERENCE-NAM-5.0.55.chr.gtf \
-o ../bamqc-q30; done

# 5. Sort by name, required for deduplication
# q30 level

for file in *.bam; do \
java -Xmx100g -jar ~/bin/picard.jar SortSam \
-I $file \
-O name-srt/sn-$file \
--SORT_ORDER queryname; done

# 6. Deduplication
# name-srt level

# read-regex check
samtools view <FILE>.bam | head | grep -E '([a-zA-Z0-9]+):([0-9]+):([a-zA-Z0-9]+):([0-9]+):([0-9]+):([0-9]+):([0-9]+)'

# deduplication itself

cd name-srt
for file in *.bam; do \
java -Xmx100g -jar ~/bin/picard.jar MarkDuplicates \
-I $file \
-O ../dedup/dedup-$file \
-M ../dedup/metrics-dedup-$file \
--READ_NAME_REGEX '([a-zA-Z0-9]+):([0-9]+):([a-zA-Z0-9]+):([0-9]+):([0-9]+):([0-9]+):([0-9]+)' \
--REMOVE_DUPLICATES true \
--ASSUME_SORT_ORDER queryname \
--OPTICAL_DUPLICATE_PIXEL_DISTANCE 100 \
--TAGGING_POLICY All ; done

