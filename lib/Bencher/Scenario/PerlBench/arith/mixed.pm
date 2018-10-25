package Bencher::Scenario::PerlBench::arith::mixed;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    participants => [
        {
            name => 'arith/mixed',
            code_template => q!

no strict;
no warnings;

for (1..20_000) {

    $x = ($x + 2) % 333;
    $z = $x / 40;
    $y = $x * 40580;
    $x = 3;
    $x++;
    $x++;
    $x = $x + 1900.3;
    $x = $x + 1900.3;
    $x -= 1;

}
            !,
        },
    ],
};

1;
# ABSTRACT:
