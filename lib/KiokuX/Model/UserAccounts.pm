package KiokuX::Model::UserAccounts;
use Moose::Role;

# with qw( );

use namespace::clean -except => 'meta';

our $VERSION = "0.01";

=head1 NAME

KiokuX::Model::UserAccounts - Decoupled security roles for L<KiokuDB>

=head1 SYNOPSIS

=head1 DESCRIPTION

L<http://blog.woobling.org/2009/06/users-accounts-identities-and-roles.html>

=head1 METHODS

=head2 get_identity

=cut

sub get_identity {
    my ($self, $id) = @_;
    return $self->lookup("identity:$id");
}

=head2 get_role

=cut

sub get_role {
    my ($self, $id) = @_;
    return $self->lookup("role:$id");
}

=head1 VERSION CONTROL

L<http://github.com/jhannah/kiokux-model-useraccounts/>

=head1 AUTHOR

Jay Hannah E<lt>jay.hannah@iinteractive.comE<gt>

=head1 COPYRIGHT

    Copyright (c) 2011, Jay Hannah, Infinity Interactive. All
    rights reserved This program is free software; you can redistribute
    it and/or modify it under the same terms as Perl itself.

=cut

1;

