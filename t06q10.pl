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

    if (!exists $friend{name}) {
        return undef;
    }

    my $friend_age = $friend{age}+1;

    my $ret_string = "";
    $ret_string .= "Hi $friend{name}! I'm $friend_age and I read $friend{reading} ages ago. Totally boring.";

    if (exists $friend{hobby}) {
        $ret_string .= " But I like $friend{hobby} as a hobby";
        if (exists $friend{diet}) {
            $ret_string .= " and $friend{diet} as a diet"
        }
        $ret_string .= ".";
    }

    return $ret_string;
}

say greet_friend(
    name    => 'Daniela',
    age     => 16,
    reading => 'Shakespeare',
    hobby   => 'Pac Man',
    diet   => 'Vegan',
);
