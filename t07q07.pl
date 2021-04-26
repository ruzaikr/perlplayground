#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';
use Data::Dump 'pp';
# use Teach::Tutor; # Don't forget to call: submit(<variable>);

my $argv0 = shift;
my @answer = grep { /$argv0/ } @ARGV;

say @answer;