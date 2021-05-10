#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';
use Data::Dump 'pp';

my $INFO;

sub wantchecker {
    say pp(wantarray);
    if (wantarray) {
        $INFO = 'you want an array';
        return ('this', 'is', 'a', 'list');
    }elsif (defined(wantarray)) {
        $INFO = 'you want nothing';
        return;
    }

    $INFO = 'you want a string';
    return 'this is a string';

}

# my $str = wantchecker();
# say '$INFO = '.$INFO.' $str = '.$str;
#
# my @arr = wantchecker();
# say '$INFO = '.$INFO.' @arr = '.pp(@arr);
#
# my %hash = wantchecker();
# say '$INFO = '.$INFO.' %hash = '.pp(%hash);


wantchecker();
say '$INFO = '.$INFO;

m/\wSydney\W/i
