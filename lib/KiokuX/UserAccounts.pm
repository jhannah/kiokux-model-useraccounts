package KiokuX::UserAccounts;

use namespace::clean -except => 'meta';

our $VERSION = "0.01";

use Moose::Role;
with qw(
    KiokuX::User
);


