#!/usr/bin/perl
use strict;
use warnings;

my $timeNow = `date +%H:%M`;
my $msg = "It is now $timeNow";
print $msg