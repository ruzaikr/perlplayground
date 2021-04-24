#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';
use Data::Dump 'pp';
#use Teach::Tutor; # Don't forget to call: submit(<variable>);

my $outputStr;

if (scalar(@ARGV) < 1) {
    $outputStr = "Hello, World!\n";
}else{
    $outputStr = "";
    foreach my $name (@ARGV) {
        $outputStr = $outputStr.qq{Hello, $name\!\n};
    }
}

pp($outputStr);
#submit($outputStr);
