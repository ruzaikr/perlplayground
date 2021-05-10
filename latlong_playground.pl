use strict;
use warnings;
use List::Util 'min';
use Geo::Coder::Google;
use LWP::Protocol::https;
use Data::Dump 'pp';
use feature 'say';

sub getDistance {
    my ($lat1, $long1, $lat2, $long2) = @_;
    # Very rough distance in degrees
    my $dist = sqrt(abs($lat1 - $lat2)**2 + (min(abs($long1 - $long2), abs(360 - abs($long1 - $long2))))**2);
    return $dist;
}

# my $distance1 = getDistance(40.63989202, -73.77893014, 40.63980103, -73.77890015);
# print $distance1;

my $geocoder = Geo::Coder::Google->new(apiver => 3, key => 'AIzaSyAm4EInCcSvNxO-Na-YMkAr8nYgaXja418');
my $location = $geocoder->geocode( location => 'Hollywood and Highland, Los Angeles, CA' );

my $lat = $location->{geometry}->{location}->{lat};

say pp($location);
say pp($lat);