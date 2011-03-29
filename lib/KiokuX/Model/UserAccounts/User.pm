package KiokuX::Model::UserAccounts::User;
use Moose::Role;
use Moose::Util::TypeConstraints;
role_type('KiokuX::Model::UserAccounts::Identity');

has name => (
   is  => 'rw',
   isa => 'Str',
);

has identities => (
   traits  => ['Array'],
   is      => 'rw',
   isa    => 'ArrayRef[KiokuX::Model::UserAccounts::Identity]',
   default => sub { [] },
   handles => {
      all_identities    => 'elements',
      filter_identities => 'grep',
      add_identity      => 'push',
   },
);

no Moose::Role;
1;
