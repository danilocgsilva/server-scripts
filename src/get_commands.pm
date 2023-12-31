package get_commands;
use strict;
use warnings;
use Exporter;

our @ISA = qw( Exporter );

our @EXPORT = qw( get_commands );

sub get_commands {
    opendir my $dir, "src/commands" or die "Cannot open diretory $!";
    my @files = readdir $dir;
    closedir $dir;

    my @commands;
    foreach my $loopfile (@files) {
        if ($loopfile ne "." && $loopfile ne "..") {
            my @commandSplitted = split(/\./, $loopfile);
            push @commands, $commandSplitted[0];
        }
    }

    return @commands;
}

1;