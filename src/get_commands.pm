package get_commands;
use strict;
use warnings;
use Exporter;

our @ISA = qw( Exporter );

our @EXPORT = qw( get_commands );

sub get_commands {
    ("list", "git");
    opendir my $dir, "/commands" or die "Cannot open diretory $!";
}

1;