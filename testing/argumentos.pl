#!/usr/bin/perl

$nargs = $#ARGV + 1;

print "There are $nargs arguments:\n";

for $arg (@ARGV) {
    print "- $arg\n";
}
