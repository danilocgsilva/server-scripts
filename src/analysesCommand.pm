package analysesCommand;
use strict;
use warnings;
use Exporter;
use lib 'src';
use get_commands;

our @ISA = qw( Exporter );

our @EXPORT = qw( analysesCommand );

sub analysesCommand {
    my @commands = get_commands();
    my @arguments = @_;
    my $argument = $arguments[0];
    my $message = "Argument doesnt exists!";
    foreach (@commands) {
        if ($_ eq $argument) {
            $message = "Argument exists";
        }
    }
    $message;
}

1;