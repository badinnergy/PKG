#!/usr/bin/perl -w
use strict;

sub jumlah {
	my $jumlah = 0;
	foreach my $n (@_) {
		$jumlah += $n;
	}
	return $jumlah;
}

my @senarai = <>;
my $jumlah = jumlah(@senarai);
print "$jumlah\n";