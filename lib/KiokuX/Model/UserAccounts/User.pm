package KiokuX::Model::UserAccounts::User;
use Moose::Role;

has name => (
   is  => 'rw',
   isa => 'Str',
);

no Moose::Role;
1;
