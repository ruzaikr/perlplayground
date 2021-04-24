#!/usr/bin/perl

use strict;
use warnings;
use Data::Dump 'pp';
use feature 'say';

sub get_max_value_key {
    my %hash_args = @_;
    # TODO: Implement me!
    my $maxval = -1;
    my $maxvalkey;
    
    map {
        if ($hash_args{$_} > $maxval) {
            $maxval = $hash_args{$_};
            $maxvalkey = $_;
        }
    } keys(%hash_args);
    
    return $maxvalkey
}

my %exam_marks = (anna => 85, bob => 96, chloe => 78, dave => 64);

say 'Highest mark awarded to '.get_max_value_key(%exam_marks);

