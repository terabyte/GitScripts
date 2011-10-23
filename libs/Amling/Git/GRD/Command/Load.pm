package Amling::Git::GRD::Command::Load;

use strict;
use warnings;

use Amling::Git::GRD::Command::Simple;
use Amling::Git::GRD::Command;
use Amling::Git::Utils;

use base 'Amling::Git::GRD::Command::Simple';

sub name
{
    return "load";
}

sub args
{
    return 1;
}

sub execute_simple
{
    my $self = shift;
    my $ctx = shift;
    my $tag = shift;

    my $commit = $ctx->get('tags', {})->{$tag} || die "Load of undefined tag $tag";
    Amling::Git::Utils::run_system("git", "checkout", $commit) || die "Cannot checkout $commit";
}

Amling::Git::GRD::Command::add_command(sub { return __PACKAGE__->handler(@_) });

1;
