#!/usr/bin/perl

use lib 'src';
use strict;
use warnings;
use feature qw(say);
# use commandExists;
use checkCommandExists;

my $command = $ARGV[0];

my $result;
my $myModule;
if ($command) {
    # my $analysedCommand = commandExists($command);
    # if ($analysedCommand) {
    #     $result = "The command $command exists!";
    # } else {
    #     $result = "The command $command does not exists!!! Doing nothing...";
    # }
    $result = checkCommandExists($command);
} else {
    $result = "Please, provides a command!";
}
say $result;
