#!/usr/bin/perl
use strict;
use warnings;
use Data::Dump 'pp';
use feature 'say';

my $i = $ARGV[0];
my @intarr;
while ($i-- > 0) {
    next if $i == 5;
    if ($i == 9) {
        $i = 6;
        redo;
    }
    push (@intarr, $i);
    last if $i == 3;
}
say pp(@intarr);

#@intarr = [10,6,4,3]