#!/usr/bin/perl

use strict;
use warnings;
use Data::Dump 'pp';
use feature 'say';
use Getopt::Long;

my $filename = '/home/student/perl-basic/topic-07/iata_airports.csv';   # option variable with default value (false)
my $number = 1;       # option variable with default value (false)
my $matching = '';       # option variable with default value (false)
my $word = 0;       # option variable with default value (false)
my $latitude = '';       # option variable with default value (false)
my $longitude = '';       # option variable with default value (false)
GetOptions ('filename=s' => \$filename, 'number=i' => \$number,
    'matching=s' => \$matching, 'word!' => \$word,
    'latitude=f' => \$latitude, 'longitude=f' => \$longitude);

say pp($word);

if (!($matching eq '')) {
    say "Up to $number airports matching $matching in $filename:";
}
elsif ($latitude && $longitude) {
    say "Up to $number airports near [$latitude, $longitude] in $filename:"
}
else {
    say "Must have at least --matching, or --latitude and --longitude as arguments";
}

sub get_name_matching_airports {
    my %ruzaikhash = @_;
    say $ruzaikhash{matching_string};
}

get_name_matching_airports(
    airports        => "plan",
    matching_string => "agodaRate",
    word            => "chicken",
);

