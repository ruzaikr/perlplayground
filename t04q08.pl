#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';

foreach my $arg (@ARGV) {
    if (exists($ENV{$arg})) {
        say $ENV{$arg};
    }
}