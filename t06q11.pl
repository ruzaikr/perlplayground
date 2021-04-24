#!/usr/bin/perl

use strict;
use warnings;
use Data::Dump 'pp';
use feature 'say';

sub greet_friend {
    # FIXME determine whether the argument is a hash or a hashref

    my %cannotnameyet;
    if (ref($_[0]) eq 'HASH') {
        my $temp = shift;
        %cannotnameyet = %{$temp};
    }else {
        %cannotnameyet = @_;
    }
    my $rh_friend = {
        age     => 5,
        reading => 'Encyclopedia Britannica',
        %cannotnameyet
    };
    return unless $rh_friend->{name};

    my $age = $rh_friend->{age} + 1;
    my $sentence = "Hi $rh_friend->{name}! I'm ${age} and I read $rh_friend->{reading} ages ago. Totally boring.";
    delete $rh_friend->{age};
    delete $rh_friend->{reading};
    delete $rh_friend->{name};
    if (keys (%$rh_friend)) {
        $sentence .= ' But I like '.join(' and ',
            map { $rh_friend->{$_}.' as a '.$_ } keys (%$rh_friend)).'.';
    }
    return $sentence;
}

# Already works for this
say greet_friend(
    name    => 'Daniela',
    age     => 16,
    reading => 'Shakespeare' ,
    hobby   => 'Pac Man',
    diet    => 'Vegan',
);

# FIXME so this works too
say greet_friend({
    name    => 'Daniela',
    age     => 16,
    reading => 'Shakespeare' ,
    hobby   => 'Pac Man',
    diet    => 'Vegan',
});

