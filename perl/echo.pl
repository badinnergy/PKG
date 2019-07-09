#!/usr/bin/perl -w

if (@ARGV) {
	while ($line = shift @ARGV) {
		print "$line ";
	}
	print "\n";
}