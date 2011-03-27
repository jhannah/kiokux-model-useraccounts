package KiokuX::Model::UserAccounts::Identity;
use Moose::Role;

with qw(
   KiokuX::User
   KiokuDB::Role::ID
);

has user => (
   is  => 'rw',
   isa => 'Narwhal::User',
);

has name => (
   is  => 'rw',
   isa => 'Str',
);

1;


