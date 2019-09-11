#!/usr/bin/perl

print "What are you looking for? ";
$numResults = 0;
$word = <STDIN>;
chomp($word);

for $line (<>) {
  if ($line =~ m/\b$word\b/i) {
    $numResults += 1;
    print "[$word FOUND]> $line\n";
    next;
  }
  print $line;
}

print "\n\n=== There are $numResults coincidences ==="
