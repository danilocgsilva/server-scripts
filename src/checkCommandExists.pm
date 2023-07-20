package checkCommandExists;
use strict;
use warnings;
use Exporter;
use lib 'src';
use commandExists;

our @ISA = qw( Exporter );

our @EXPORT = qw( checkCommandExists );

sub checkCommandExists {
    my @arguments = @_;
    my $command = $arguments[0];
    my $analysedCommand = commandExists($command);
    if ($analysedCommand) {
        return "The command $command exists!";
    } else {
        return "The command $command does not exists!!! Doing nothing...";
    }
}

1;