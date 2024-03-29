# This file is under the MIT X11 License:
# http://www.opensource.org/licenses/mit-license.php

use strict;
use warnings;

use File::Spec;
use lib File::Spec->catdir(File::Spec->curdir(), "inc");

use Test::Run::Builder;

my $build = Test::Run::Builder->new(
    module_name => "Games::LMSolve",
    configure_requires =>
    {
        'Module::Build' => '0.36',
    },
    build_requires =>
    {
        "Test::More" => 0,
    },
    requires =>
    {
        'English' => 0,
        'Exporter' => 0,
        'Getopt::Long' => 0,
        'Pod::Usage' => 0,
        'perl' => '5.008',
        'strict' => 0,
        'vars' => 0,
        'warnings' => 0,
    },
    dist_author => 'Shlomi Fish <shlomif@iglu.org.il>',
    dist_version_from => "lib/Games/LMSolve/Base.pm",
    license => "mit",
    script_files => ["lm-solve"],
    meta_merge =>
    {
        resources =>
        {
            repository => "http://bitbucket.org/shlomif/lm-solve-source",
            homepage => "http://www.shlomifish.org/lm-solve/",
        },
        keywords =>
        [
            "alice",
            "brfs",
            "dfs",
            "game",
            "games",
            "inheritance",
            "logic",
            "logic mazes",
            "mazes",
            "minotaur",
            "plank",
            "pure-perl",
            "puzzle",
            "puzzles",
            "riddle",
            "riddles",
            "scan",
            "search",
            "swamp",
            "theseus",
            "tilt",
        ],
    },
);

$build->create_build_script;

