#!/usr/bin/perl

print "What are you looking for? ";
$word = <STDIN>;
chomp($word);

for $line (<>) {
  if ($line =~ m/\b$word\b/i) {
    print "[$word FOUND]> $line\n";
  }
  else {print $line;}
}
