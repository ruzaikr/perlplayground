#!/usr/bin/perl

use strict;
use warnings;
use Data::Dump 'pp';
use feature 'say';

sub string_lengths {
    my @params = @_;
    # TODO - implement me...
    # and make sure @ARGV is not used inside this subroutine!

    map { length($_) } @params;
}

my @lengths = string_lengths(@ARGV);
say 'String lengths: '.pp(@lengths);

