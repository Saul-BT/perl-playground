# NONONONO IT'S A JOKE
# WELL... IT'S NOT A JOKEEE

use strict;
use warnings;

sub getPercents {
    my $string = shift;
    my @percents = ();

    while ($string =~ m/(%(?:\d+(?:.\d+)?)?[sdxf])/g){
        push @percents, $1;
    }

    @percents;
}


sub checkTypes {
    print scalar(shift)->[0];
}


sub printj {
    my $strToProcess = shift;
    my @args = @_;
    my @printjPercents = getPercents($strToProcess);

    scalar(@args) == scalar(@printjPercents) or die
    "Number of arguments doesn't match number of percentages";

    checkTypes(\@printjPercents, \@args);
}

printj "string: %s, number: %d, with padding: %05d, hex: %x, decimal: %5.2f.\n", "hello", 2, 3, 4, 5.6;
