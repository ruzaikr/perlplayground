#!/usr/bin/perl

use strict;
use warnings;
use feature ('say', 'state');

sub call_me {
    state $i = 0;
    $i++;
    return $i;
}

say "You have called me ".call_me()." times.";
say "You have called me ".call_me()." times.";
say "You have called me ".call_me()." times.";