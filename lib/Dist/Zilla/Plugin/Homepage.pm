use 5.008;
use strict;
use warnings;

package Dist::Zilla::Plugin::Homepage;

# ABSTRACT: automatically sets the homepage URL
use Moose;
with 'Dist::Zilla::Role::MetaProvider';

sub metadata {
    my ($self, $arg) = @_;
    return {
        resources => {
            homepage =>
              sprintf('http://search.cpan.org/dist/%s/', $self->zilla->name)
        }
    };
}
__PACKAGE__->meta->make_immutable;
no Moose;
1;

=pod

=for test_synopsis
1;
__END__

=head1 SYNOPSIS

In C<dist.ini>:

    [Homepage]

=head1 DESCRIPTION

This plugin sets the distribution's homepage URL as metadata.

=function metadata

Sets the homepage URL in the distribution's metadata.
