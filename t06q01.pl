#!/usr/bin/perl

use strict;
use warnings;
use Data::Dump 'pp';
use feature 'say';

sub arrayref {
    # FIXME Fill me in!
    my @arr = @_;
    return \@arr;
}

my $ra_args = arrayref(@ARGV);

say pp($ra_args);

