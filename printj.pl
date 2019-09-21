# NONONONO IT'S A JOKE
# WELL... IT'S NOT A JOKEEE

use strict;
use warnings;

sub getPercents {
    my $string = shift;
    my @percents = ();

    while ($string =~ m/(%(?:\d+(?:\.\d+)?)?[sdxf])/g){
        push @percents, $1;
    }

    @percents;
}


sub checkTypes {
    my $validator = 1;
    my @percents = @{scalar(shift)};
    my @args = @{scalar(shift)};
    my $size = scalar(@percents);

    foreach my $n (0..$size - 1) {
	my $currArg = $args[$n];
	my $currFormat = substr($percents[$n],-1);
	
        $currFormat eq 's' && $currArg =~ m/^\D+$/ ||
        $currFormat =~ m/[dx]/ && $currArg =~ m/^\d+$/ ||
        $currFormat eq 'f' && $currArg =~ m/^\d+(?:\.\d+)?$/ or
        die "'$currArg' can't be formatted as '$currFormat'";
    }
}


sub printj {
    my $strToProcess = shift;
    my @args = @_;
    my @printjPercents = getPercents($strToProcess);

    scalar(@args) == scalar(@printjPercents) or die
    "Number of arguments doesn't match number of percentages";

    checkTypes(\@printjPercents, \@args);
}

printj "string: %s, number: %d, with padding: %05d, hex: %x, decimal: %5.2f.\n", "hello", 5, 33, 4, 5.6;
