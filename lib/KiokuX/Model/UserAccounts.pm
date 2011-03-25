package KiokuX::Model::UserAccounts;
use Moose::Role;

# with qw( );

use namespace::clean -except => 'meta';

our $VERSION = "0.01";

has jay => (
    isa => "Str",
    is  => "ro",
    required => 1,
    default => 'boogity',
);

=head1 NAME

KiokuX::Model::UserAccounts - A generic role for storing user information in L<KiokuDB>

=head1 SYNOPSIS

    package MyFoo::Schema::User;
    use Moose;

    use KiokuX::User::Util qw(crypt_password);

    with qw(KiokuX::User);

    my $user = MyFoo::Schema::User->new(
        id       => $user_id,
        password => crypt_password($password),
    );

    $user->kiokudb_object_id; # "user:$user_id"

    if ( $user->check_password($read_password) ) {
        warn "Login successful";
    } else {
        warn "Login failed";
    }

=head1 DESCRIPTION

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

