#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';

open (my $fh_randomtext, '<', $ARGV[1]);

my $line = <$fh_randomtext>;

my $substitute = uc $ARGV[0];
while (defined($line)) {
    if ($line =~ s/$ARGV[0]/$substitute/g) {
        print $line;
    }
    $line = <$fh_randomtext>
}

close($fh_randomtext);
