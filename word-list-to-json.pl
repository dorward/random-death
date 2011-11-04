#!/usr/bin/perl

use strict;
use warnings;
use JSON::Any;

my %words = map { s/\s+$//; $_ => 1 } <STDIN>;
my $j = JSON::Any->new;
my $json = $j->objToJson(\%words);

open my $out, ">", "words.js";
print $out "loadWords($json);";
