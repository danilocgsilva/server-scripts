package checkCommandExists;
use strict;
use warnings;
use Exporter;
use lib 'src';
use commandExists;
use get_commands;

our @ISA = qw( Exporter );

our @EXPORT = qw( checkCommandExists );

sub checkCommandExists {
    my @arguments = @_;
    my $command = $arguments[0];
    my $analysedCommand = commandExists($command);
    if ($analysedCommand) {
        return "The command $command exists!";
    } else {
        my $message = "The command $command does not exists!!! Doing nothing...";
        $message .= "\nThe following commands are:";
        my @commands = get_commands();
        for $command (@commands) {
            $message .= "\n* $command";
        }
        return $message;
    }
}

1;