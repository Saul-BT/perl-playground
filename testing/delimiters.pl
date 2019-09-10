#!/usr/bin/perl

$string = "Perl mola";

# Puedes usar un simbolo para
# delimitar la regexp a tu
# eleccion

if ($string =~ m/[Pp]erl/) {
  print "Guay";
}
elsif ($string =~ m(perl)i) {
  print "NOOOOOOO";
}
else {
  print "Caca";
}
