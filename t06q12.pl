#!/usr/bin/perl

use strict;
use warnings;
use Data::Dump 'pp';
use feature 'say';

sub greet_friend {
    my $rh_friend = {
        age     => 5,
        reading => 'Encyclopedia Britannica',
        ref($_[0]) ? %{$_[0]} : @_
    };
    return unless $rh_friend->{name};

    my $age = $rh_friend->{age} + 1;

    my $reading;
    if (ref($rh_friend->{reading})) {
        say 'chocolate';
        $reading = join(' AND ', @{$rh_friend->{reading}});
    }else {
        $reading = $rh_friend->{reading};
    }

    my $sentence = "Hi $rh_friend->{name}! I'm ${age} and I read $reading ages ago. Totally boring.";
    delete $rh_friend->{age};
    delete $rh_friend->{reading};
    delete $rh_friend->{name};
    if (keys (%$rh_friend)) {
        $sentence .= ' But I like '.join(' and ',
            map { $rh_friend->{$_}.' as a '.$_ } keys (%$rh_friend)).'.';
    }
    return $sentence;
}

say greet_friend(
    name    => 'Daniela',
    age     => 16,
    reading => 'Shakespeare' ,
    hobby   => 'Pac Man',
    diet    => 'Vegan',
);

say greet_friend({
    name    => 'Daniela',
    age     => 16,
    reading => 'Shakespeare' ,
    hobby   => 'Pac Man',
    diet    => 'Vegan',
});

say greet_friend(
    name    => 'Daniela',
    age     => 16,
    reading => 'Shakespeare' ,
    hobby   => 'Pac Man',
    diet    => 'Vegan',
);

# FIXME Get this working too
say greet_friend(
    name    => 'Daniela',
    age     => 16,
    reading => [
        'Shakespeare',
        'The Unbearable Lightness of Being'
    ] ,
);

