#!/usr/bin/perl
use strict;
use warnings;

open IN,"YYYH1-34-del.blp" || die;
open OUT,">YYYH1-34-del.pure.blp" || die;
while (<IN>) {
	chomp;
	my @lines = split;
	if (!($lines[0] eq $lines[1])) {
		print OUT $_ . "\n";
	}
}
close IN;
close OUT;
