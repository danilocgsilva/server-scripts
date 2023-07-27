#!/usr/bin/perl

use lib 'src';
use strict;
use warnings;
use feature qw(say);
use checkCommandExists;

my $command = $ARGV[0];

my $result;
my $myModule;
if ($command) {
    $result = checkCommandExists($command);
} else {
    $result = "Please, provides a command!";
}
say $result;
