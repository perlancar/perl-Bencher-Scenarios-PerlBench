package Bencher::Scenario::PerlBench::loop::for_range;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    participants => [
        {
            name => 'loop/for_range',
            code_template => q!

no strict;
no warnings;

    for (1..200_000) {
        $foo = $_;
    }

!,
        },
    ],
};

1;
# ABSTRACT:
