#!/usr/bin/perl

use lib 'src';
use strict;
use warnings;
use feature qw(say);
use analysesCommand;

my $command = $ARGV[0];

my $result;
my $myModule;
if ($command) {
    my $analysedCommand = analysesCommand($command);
    $result = $analysedCommand;
} else {
    $result = "Please, provides a command!";
}
say $result;
