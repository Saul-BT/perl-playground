#!/usr/bin/perl

%meh1 = (num => 0, val => 4);
%meh2 = (num => 1, val => 3);

@mehs = (\%meh1, \%meh2);

print $mehs[0]{val};
