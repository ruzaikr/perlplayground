#!/usr/bin/perl

use strict;
use warnings;
use Data::Dump 'pp';
use feature 'say';


sub search_firstname {
    ## FILL THIS IN
    my @matches;
    my $firstname_to_match = $_[0];

    foreach my $rh_contact (@{$_[1]}) {
        push(@matches, $rh_contact) if $firstname_to_match eq $rh_contact->{"firstname"};
    }

    return \@matches;
}

my $rah_results = search_firstname ($ARGV[0] || '', [
    { firstname => 'Bill', surname => 'Smith',    phone => 123123213 },
    { firstname => 'Anne', surname => 'Taylor',   phone => 123123213 },
    { firstname => 'Bill', surname => 'Sinclair', phone => 9999 }
]);


say pp($rah_results);

