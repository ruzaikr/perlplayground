#!/usr/bin/perl

use strict;
use warnings;
use Data::Dump 'pp';
use feature 'say';

sub list_to_hash {
    ## FILL THIS IN
    my %unnamedhash = @ARGV;
    return \%unnamedhash;
}

my $rh = list_to_hash(@ARGV);
say pp($rh);

