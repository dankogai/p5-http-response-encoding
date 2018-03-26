use 5.008001;
use strict;
use warnings;
use ExtUtils::MakeMaker;

my $mm_ver = ExtUtils::MakeMaker->VERSION;

WriteMakefile(
    NAME                => 'HTTP::Response::Encoding',
    AUTHOR              => 'Dan Kogai <dankogai@dan.co.jp>',
    VERSION_FROM        => 'lib/HTTP/Response/Encoding.pm',
    ABSTRACT_FROM       => 'lib/HTTP/Response/Encoding.pm',
    MIN_PERL_VERSION    => '5.8.1',
    PL_FILES            => {},
    PREREQ_PM => {
        'Encode'         => 2.00,
        'HTTP::Response' => 0,
    },
    ( $mm_ver < 6.63_03 ? 'BUILD_REQUIRES' : 'TEST_REQUIRES' ) => {
        'LWP::UserAgent' => 0,
        'Test::More'     => 0,
        'URI'            => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'HTTP-Response-Encoding-*' },
    ($mm_ver < 6.46 ? () : (META_MERGE => {
        'meta-spec' => { version => 2 },
        dynamic_config => 1,
        resources => {
#            homepage => 'TK',
#            repository => {
#                url => 'TK',
#                web => 'TK',
#                type => 'TK',
#            },
            bugtracker => {
                web => 'https://rt.cpan.org/Dist/Display.html?Name=HTTP-Response-Encoding',
            },
        },
    })),
    ($mm_ver < 6.31 ? () : (LICENSE => 'perl_5')),
);
