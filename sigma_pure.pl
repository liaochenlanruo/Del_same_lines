#!/usr/bin/perl
use strict;
use warnings;

my %hash;
open IN, "sigmaA_pure.txt" or die "open IN failed\n";
open OUT, ">>sigmaA_pure2.txt" or die "open OUT failed\n";
while (<IN>) {
	chomp;
	my @lines = split;
	my $ids = shift @lines;
	next if (exists $hash{$ids});
	$hash{$ids} = $_;
	print OUT $hash{$ids} . "\n";
}
close IN;
close OUT;
