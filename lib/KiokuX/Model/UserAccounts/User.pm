package KiokuX::Model::UserAccounts::User;
use Moose::Role;

with qw(
   KiokuX::User
   KiokuDB::Role::ID
);


has jay => ( 
   is  => 'rw',
   isa => 'Str',
   default => 'FOOBITY!'
);


1;
