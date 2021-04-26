#!/usr/bin/perl

use strict;
use warnings;
use Data::Dump 'pp';
use feature 'say';
use Getopt::Long;
use Text::CSV;

my $filename = '/home/student/perl-basic/topic-07/iata_airports.csv';   # option variable with default value (false)
my $number = 1;       # option variable with default value (false)
my $matching = '';       # option variable with default value (false)
my $word = '';       # option variable with default value (false)
my $latitude = '';       # option variable with default value (false)
my $longitude = '';       # option variable with default value (false)
GetOptions ('filename=s' => \$filename, 'number=i' => \$number,
    'matching=s' => \$matching, 'word!' => \$word,
    'latitude=f' => \$latitude, 'longitude=f' => \$longitude);

sub parse_airports {
    my $fh_in;
    my $infile = shift;
    open ($fh_in, "<:encoding(utf8)", $infile) or die "Error opening input file: $!";
    my $csv = Text::CSV->new( { binary => 1, eol => $/ } );
    my $ra_colnames = $csv->getline($fh_in);
    $csv->column_names(@$ra_colnames);
    my @ra_airports;
    while (my $rh_line = $csv->getline_hr($fh_in) ) {
        push(@ra_airports, $rh_line);
    }
    return \@ra_airports;
}

sub get_name_matching_airports {
    # FILL THIS IN
}


my $rah_airports = parse_airports($filename);
my $rah_airports_found = [];
#my $word; # In preparation for the next exercise

if (!($matching eq '')) {
    say "Up to $number airports matching $matching in $filename:";
    $rah_airports_found = get_name_matching_airports(
        airports        => $rah_airports,
        matching_string => $matching,
        word            => $word,
    );
}
elsif ($latitude && $longitude) {
    say "Up to $number airports near [$latitude, $longitude] in $filename:"
}
else {
    say "Must have at least --matching, or --latitude and --longitude as arguments";
}

print pp($rah_airports_found);

