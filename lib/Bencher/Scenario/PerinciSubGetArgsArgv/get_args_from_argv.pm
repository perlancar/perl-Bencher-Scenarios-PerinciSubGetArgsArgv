package Bencher::Scenario::PerinciSubGetArgsArgv::get_args_from_argv;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

my $meta0 = {
    v=>1.1,
    args=>{
    },
};

my $meta2 = {
    v=>1.1,
    args=>{
        a1=>{schema=>'int*', req=>1, pos=>0},
        a2=>{schema=>'str*', req=>1, pos=>1},
    },
};

my $meta2n = {
    v=>1.1,
    args=>{
        a1=>{schema=>[int=>{req=>1},{}], req=>1, pos=>0},
        a2=>{schema=>[str=>{req=>1},{}], req=>1, pos=>1},
    },
};

our $scenario = {
    summary => 'Benchmark get_args_from_argv()',
    participants => [
        {
            fcall_template => 'Perinci::Sub::GetArgs::Argv::get_args_from_argv(%{<args>})',
        },
    ],
    datasets => [
        {
            name => '0 known args + 0 args',
            args => {
                args => {
                    common_opts => {},
                    meta => $meta0,
                    argv => [],
                },
            },
        },
        {
            name => '2 known args + 0 args',
            args => {
                args => {
                    common_opts => {},
                    meta => $meta2,
                    argv => [],
                },
            },
        },
        {
            name => 'meta norm + 2 known args + 0 args',
            args => {
                args => {
                    common_opts => {},
                    meta => $meta2n,
                    argv => [],
                    meta_is_normalized => 1,
                },
            },
        },
        {
            name => '2 known args + 2 args positional',
            args => {
                args => {
                    common_opts => {},
                    meta => $meta2,
                    argv => ["123", "abc"],
                },
            },
        },
        {
            name => 'meta norm + 2 known args + 2 args positional',
            args => {
                args => {
                    common_opts => {},
                    meta => $meta2n,
                    argv => ["123", "abc"],
                    meta_is_normalized => 1,
                },
            },
        },
    ],
};

1;
# ABSTRACT:
