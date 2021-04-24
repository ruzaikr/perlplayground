#!/usr/bin/perl

use strict;
use warnings;
use Data::Dump 'pp';
use feature 'say';

sub greet_friend {
    my %friend = (
        age     => 5,
        reading => 'Encyclopedia Britannica',
        @_
    );

    return unless $friend{name};

    my $response = "Hi $friend{name}! I'm ".
        ($friend{age}+1).
        " and I read $friend{reading} ages ago. Totally boring.";
    delete $friend{age};
    delete $friend{name};
    delete $friend{reading};
    return $response unless keys(%friend);

    $response .= ' But I like ';
    $response .= join(' and ',
        map { $friend{$_}.' as a '.$_ } keys (%friend)).'.';
    return $response;
}

say greet_friend(
    name    => 'Dazza',
    age     => 61,
    reading => 'Shake Milk',
    hobby   => 'Cycling',
    diet   => 'Halal',
    meat   => 'Chicken',
    sexposition => 'doggy',
);