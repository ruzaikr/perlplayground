

#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';

sub modify_string_exclaim {
    ## FILL THIS IN to add an exclamation mark at the end of the string
    ${$_[0]} .= "!";
}

my $sc = 'Hello';
say $sc; # Output: Hello

modify_string_exclaim(\$sc);
say $sc; # Output: Hello!

