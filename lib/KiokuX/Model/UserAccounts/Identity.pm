package KiokuX::Model::UserAccounts::Identity;
use Moose::Role;
use Moose::Util::TypeConstraints;
role_type('KiokuX::Model::UserAccounts::User');

with qw(
   KiokuX::User
   KiokuDB::Role::ID
);

has user => (
   is  => 'rw',
   isa => 'KiokuX::Model::UserAccounts::User',
);

no Moose::Role;

1;
