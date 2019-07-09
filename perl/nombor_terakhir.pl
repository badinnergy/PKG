#!/usr/bin/perl -w

# Program ini akan terima input nombor (positif & bulat sahaja) daripada STDIN
# dan akan keluarkan output nombor yang terakhir ia jumpa

# Contoh 1
# Input: 42 167 900
# Output: 900

# Contoh 2
# Input: icgaucgiu 7846 jdshj 274612 jdakhkdj 7486187
# Output: 7486187

# Contoh 3
# Input: pontianak87
# output: 87

# Contoh 4
# Input: djah8989 koko8238 7878
# Output: 7878

# Contoh 5
# Input: 986217 jabnsjb 873283 jhsjasb7878
# Output: 7878

while ($line = <>) { # selagi input diterima
	$line =~ /.*\D(\d+)\D.*/; # regex untuk cari nombor terakhir
	print "$1\n"; # cetak regex yang ditangkap
}