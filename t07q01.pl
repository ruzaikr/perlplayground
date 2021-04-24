#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';

my $matching_str = shift;

my @result;

foreach my $word (@ARGV) {
    push (@result, $word =~ /$matching_str/ ? uc $word : $word);
}

say join(" ", @result);