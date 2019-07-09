#!/usr/bin/perl -w

# Program ini akan terima input nombor (positif & bulat sahaja) daripada STDIN
# dan akan keluarkan output nombor yang terawal ia jumpa

# Contoh 1
# Input: 42 167 900
# Output: 42

# Contoh 2
# Input: hello 3467 huhu 23
# Output: 3467

# Contoh 3
# Input: 89-huhu-hello hmm 78
# Output: 89

while ($line = <>) {
	$line =~ /(\d+)/; # regex untuk cari nombor terawal
	print "$1\n"; # cetak regex yang ditangkap
}