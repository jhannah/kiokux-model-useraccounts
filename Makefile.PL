#!/usr/bin/perl -w

use strict;

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'KiokuX::Model::UserAccounts',
    VERSION_FROM => 'lib/KiokuX/Model/UserAccounts.pm',
    INSTALLDIRS  => 'site',
    SIGN         => 1,
    PL_FILES     => { },
    PREREQ_PM    => {
        'Test::use::ok'    => 0,
        'namespace::clean' => 0,
        'Moose'            => 0.63,
        'KiokuDB'          => 0.09,
        'Sub::Exporter'    => 0,
        'KiokuX::User'     => 0,
    },
);

# ex: set sw=4 et:
