#!perl
use strict;
use warnings;
use ExtUtils::MakeMaker;
WriteMakefile(
    NAME         => 'Archive::Peek',
    VERSION_FROM => 'lib/Archive/Peek.pm',
    AUTHOR       => 'Leon Brocard <acme@astray.com>',
    ABSTRACT     => 'Peek into archives without extracting them',
    LICENSE      => 'perl',
    PREREQ_PM    => {
        'Archive::Tar'               => '0',
        'Archive::Zip'               => '0',
        'Moo'                        => '0',
        'Types::Path::Tiny'          => '0',
    },
    TEST_REQUIRES => {
        'Test::More'                 => '0',
    },
    META_MERGE   => {
        resources => {
            repository => 'https://github.com/acme/archive-peek',
        },
        prereqs => {
            develop => {
                requires => {
                    'Test::Pod'      => '1.14',
                },
            },
        },
    },
);

