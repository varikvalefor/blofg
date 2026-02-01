#!/usr/bin/perl

my $jbo = <>;
chomp($jbo);
$jbo =~ s/^-?\s*\*/\\\\*/;

my $eng = <>;
chomp($eng);
$eng =~ s/^+?\s*\*/\\\\*/;

print("sed -e \"s/$jbo/$eng/\"");
