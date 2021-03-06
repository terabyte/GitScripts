package Amling::Git::G3MD::Resolver::Split;

use strict;
use warnings;

use Amling::Git::G3MD::Resolver::BaseSplit;
use Amling::Git::G3MD::Resolver::Git;
use Amling::Git::G3MD::Resolver;

use base ('Amling::Git::G3MD::Resolver::BaseSplit');

sub _names
{
    return ['split', 'sp'];
}

sub decide_prefix
{
    my $class = shift;
    my $depth = shift;
    my $length = shift;

    return $depth;
}

sub side
{
    return "front";
}

Amling::Git::G3MD::Resolver::add_resolver(__PACKAGE__);

1;
