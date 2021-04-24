#!/usr/bin/perl

use strict;
use warnings;
use Data::Dump 'pp';
use feature 'say';


sub translate {
    ## FILL THIS IN

    my $en_de = $_[0];
    my %en_de = %$en_de;
    my $args = $_[1];
    my @args = @$args;

    my @translation;

    for my $arg (@args) {
        if (exists $en_de{$arg}) {
            push(@translation, $en_de{$arg});
        }else {
            push(@translation, $arg);
        }
    }
    return \@translation;
}

my $ra_en_de_xlat = translate({
    ich => 'I',
    bin => 'am',
    ein => 'a',
}, [@ARGV]);

say join(' ',@$ra_en_de_xlat);

