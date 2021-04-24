#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';

open (my $fh_randomtext, '<', $ARGV[1]);

my $line = <$fh_randomtext>;

while (defined($line)) {
    if ($line =~ /$ARGV[0]/) {
        print $line;
    }
    $line = <$fh_randomtext>
}

close($fh_randomtext);
