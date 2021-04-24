#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';
use Data::Dump 'pp';

my @arr = qw/this is a really funny list/;
my @new_arr = map { $_.':)' } @arr;
say pp @new_arr;