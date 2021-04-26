#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';

open (my $fh_randomtext, '<', $ARGV[2]);

my $string1 = $ARGV[0];
my $string2 = $ARGV[1];

my $line = <$fh_randomtext>;
while (defined($line)) {
    $line =~ s/($string1.*?$string2)/\U$1\E/g;
    print $line;
    $line = <$fh_randomtext>
}

close($fh_randomtext);
