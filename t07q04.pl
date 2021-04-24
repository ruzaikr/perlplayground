#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';

open (my $fh_randomtext, '<', $ARGV[1]);

my $matching_string = $ARGV[0];

my $line = <$fh_randomtext>;
while (defined($line)) {
    my @words = split('\s', $line);
    my @new_words;
    map {
        if ($_ =~ /$matching_string/) {
            push(@new_words, uc($_));
        }else {
            push(@new_words, $_);
        }
    } @words;

    say join(" ", @new_words);

    $line = <$fh_randomtext>
}

close($fh_randomtext);
