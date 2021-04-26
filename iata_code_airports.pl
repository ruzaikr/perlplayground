#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';
use Text::CSV;
use Data::Dump 'pp';

my $csv = Text::CSV->new( { binary => 1, eol => $/ } );

my $fh_in;
my $fh_out;
my $infile = shift;
my $outfile = shift;
open ($fh_in, "<:encoding(utf8)", $infile) or die "Error opening input file: $!";
open ($fh_out, ">:encoding(utf8)", $outfile) or die "Error opening output file: $!";

my $ra_colnames = $csv->getline($fh_in);
$csv->print($fh_out, $ra_colnames);

my $idx_iata_code;
while (my ($idx, $elem) = each @$ra_colnames) {
    if ($elem eq 'iata_code') {
        $idx_iata_code = $idx;
    }
}

while (my $ra_line = $csv->getline($fh_in)) {
    if (@$ra_line[$idx_iata_code]) {
        say "pushing";
        $csv->print($fh_out, $ra_line);
    }
}

close ($fh_in);
close ($fh_out);