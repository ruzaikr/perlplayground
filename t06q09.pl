#!/usr/bin/perl

use strict;
use warnings;
use Data::Dump 'pp';
use feature 'say';

sub isbn_catalog {
    # IMPLEMENT ME!
    my %catalog;

    foreach my $ra_isbn_entry (@{$_[0]}) {
        my @isbn_entry = @$ra_isbn_entry;
        say $isbn_entry[1];
        $catalog{$isbn_entry[1]} = {
            authors          => [ @isbn_entry[3..$#isbn_entry] ],
            publication_year => $isbn_entry[0],
            title            => $isbn_entry[2]
        };
    }

    return \%catalog;
}

my $rh_catalog = isbn_catalog([
    ['1998', '978-0-8001-0215-9', 'Glory', 'Freddie Fields', 'P.K. Fields', 'Pieter Jan Brugge'],
    ['1998', '978-0-8001-2901-9','The Whole Town\'s Talking', 'Joseph H. August','John Ford']
])
;

say pp($rh_catalog);