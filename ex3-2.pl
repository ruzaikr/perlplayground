#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';
use Data::Dump 'pp';
#use Teach::Tutor; # Don't forget to call: submit(<variable>);

my $noOfArgs = scalar(@ARGV)
my $outputStr;

if ($noOfArgs == 0 ) {
    $outputStr = qq{I'm lonely!};
}
elsif ($noOfArgs == 1) {
    $outputStr = "Would you like some tea?";
}
elsif ($noOfArgs == 2) {
    $outputStr = "Hello you two!";
}
elsif ($noOfArgs == 3 || $noOfArgs == 4 || $noOfArgs == 5) {
    $outputStr = "Come on in!";
}
else {
    $outputStr = "Sorry, you must have the wrong address.";
}

#submit($outputStr);