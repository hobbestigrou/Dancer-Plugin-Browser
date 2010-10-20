use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'Dancer::Plugin::Browser',
    AUTHOR        => q{Natal Ngétal <hobbestigrou@erakis.im>},
    VERSION_FROM  => 'lib/Dancer/Plugin/Browser.pm',
    ABSTRACT_FROM => 'lib/Dancer/Plugin/Browser.pm',
    PREREQ_PM => {
        'Test::More'            => 0,
        'Dancer'                => 1.175,
        'HTTP::BrowserDetect'   => 0,
    },
);
