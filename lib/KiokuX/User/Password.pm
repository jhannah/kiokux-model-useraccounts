#!/usr/bin/perl

package KiokuX::User::Password;
use Moose::Role;

use MooseX::Types::Authen::Passphrase qw(Passphrase);

use KiokuX::User::Util qw(crypt_password);

use namespace::clean -except => 'meta';

has password => (
    isa      => Passphrase,
    is       => 'rw',
    coerce   => 1,
    required => 1,
    #handles => { check_password => "match" },
);

sub check_password {
    my $self = shift;
    $self->password->match(@_);
}

sub set_password {
    my ( $self, @args ) = @_;
    $self->password( crypt_password(@args) );
}

__PACKAGE__

__END__

=pod

=head1 NAME

KiokuX::User::Password - A role for users with a password attribute

=head1 SYNOPSIS

    with qw(KiokuX::User::Password);

=head1 DESCRIPTION

This is a simple role for user objects that can check their own password.

=head1 METHODS

=over 4

=item check_password

Delegates to the L<Authen::Passphrase/match>.

=back

=head1 ATTRIBUTES

=over 4

=item password

Uses L<MooseX::Types::Authen::Passphrase> to provide coercions.

This is a required, read-write attribute.

=back

=cut

# ex: set sw=4 et:

