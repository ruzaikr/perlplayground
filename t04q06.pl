#!/usr/bin/perl

use strict;
use warnings;
# use Teach::Tutor;
use Data::Dump 'pp';
use feature 'say';

my %person = (
    'Action'  => "Says",
    'Subject' => "Wash your hands!",
    'Weight'  => "75kg",
    'Height'  => "190cm",
    'Name'    => "Simon",
);

unless (scalar(@ARGV) &&
    (($ARGV[0] eq 'keys') || ($ARGV[0] eq 'values'))
) {
    say "$0 must be called with a single command-line argument -
  'keys' or 'values'";
    exit;
}
say $ARGV[0];
my @outlist;
say values(%person);
if ($ARGV[0] eq 'keys') {
    @outlist = keys(%person);
}
else {
    @outlist = values(%person);
}

@outlist = sort @outlist;

# submit(@outlist);
say pp(@outlist);
