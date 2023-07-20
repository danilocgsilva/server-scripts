package commandExists;
use strict;
use warnings;
use Exporter;
use lib 'src';
use get_commands;

our @ISA = qw( Exporter );

our @EXPORT = qw( commandExists );

sub commandExists {
    my @commands = get_commands();
    my @arguments = @_;
    my $argument = $arguments[0];
    my $result = undef;
    foreach (@commands) {
        if ($_ eq $argument) {
            $result = 1;
        }
    }
    $result;
}

1;