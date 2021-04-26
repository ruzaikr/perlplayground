use strict;
use warnings;

my @ruzaiklist = ('hello', 'world', 'chicken', 'boobs', 'peanuts');
my @ruzaiklist2;
while (my $word = shift(@ruzaiklist)) {
    print "$word\n";
    push(@ruzaiklist2, $word);
}

print \@ruzaiklist2;