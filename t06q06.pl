#!/usr/bin/perl

use strict;
use warnings;
use Data::Dump 'pp';
use feature 'say';

my $r_foo = sub { return "foo"; };
my $r_bar = sub { return {this => 1, that => 2}; };

sub call_sub {

    ### Insert code here ###
    # $retval is what the subroutine returns
    my $r_sub = shift;
    my $retval = $r_sub->();

    return $retval;
}

say 'r_foo returns '.pp(call_sub($r_foo));
say 'r_bar returns '.pp(call_sub($r_bar));

