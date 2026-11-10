
#!/usr/bin/env perl

use strict;
use warnings;

my $file = shift || "sample.fasta";

open(my $fh, '<', $file)
    or die "Cannot open file: $file\n";

my ($id, $seq);

sub analyse_sequence {
    my ($id, $seq) = @_;

    my $length = length($seq);

    my $a = ($seq =~ tr/A/A/);
    my $t = ($seq =~ tr/T/T/);
    my $g = ($seq =~ tr/G/G/);
    my $c = ($seq =~ tr/C/C/);

    my $gc = $g + $c;
    my $gc_percent = $length
        ? ($gc / $length) * 100 : 0;

    print "--------------------------------\n";
    print "Sequence: $id\n";
    print "Length: $length\n";
    print "A: $a, T: $t, G: $g, C: $c\n";
    printf "GC Content: %.2f%%\n", $gc_percent;
}

while (my $line = <$fh>) {

    chomp($line);
    $line =~ s/\r$//;

    next if $line =~ /^\s*$/;

    if ($line =~ /^>(.*)/) {

        analyse_sequence($id, $seq)
            if defined $id;

        $id = $1;
        $seq = "";

    } else {

        die "Sequence found before FASTA header\n"
            unless defined $id;

        $line =~ s/\s+//g;
        $seq .= uc($line);
    }
}

analyse_sequence($id, $seq) if defined $id;

close($fh);
