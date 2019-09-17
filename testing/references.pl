# Testing references
# By saul-bt

use strict;
use warnings;

my @colors = ("red", "green", "blue");

# '\' can be used to get a reference
my $colorsRef = \@colors;

my %superHash = (
    "colors" => $colorsRef,
    # Also you can create an anonymous
    # array with '[]' ({} for hashes)
    # that returns the reference
    "numbers" => [1, 2, 3]
);

# Now the hash stores something like
# this: ("colors", ARRAY(0x...),
#        "numbers", ARRAY(0x...))

# And you can access these arrays with:

print qq(@{$superHash{"colors"}}\n);

# To print an element:

print qq(${$superHash{"numbers"}}[0]\n);
print $superHash{"colors"} -> [0], "\n";

# Size of array:

print scalar @{$superHash{"colors"}};
