#!perl
use strict;
use warnings;
use Test::More tests => 7;
use_ok 'Archive::Peek';

my @filenames
    = ( 'archive/README', 'archive/a/A', 'archive/a/b/B', 'archive/c/C' );

foreach my $filename ( 't/archive.zip', 't/archive.tgz' ) {
    my $peek = Archive::Peek->new( filename => $filename );
    isa_ok( $peek, 'Archive::Peek' );
    is_deeply( [ $peek->files ], \@filenames );
    is( $peek->file('archive/README'), 'This is in the root directory.

It is a file.
'
    );
}
