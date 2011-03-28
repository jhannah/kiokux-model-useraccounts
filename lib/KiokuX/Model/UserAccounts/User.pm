package KiokuX::Model::UserAccounts::User;
use Moose::Role;

has name => (
   is  => 'rw',
   isa => 'Str',
);

has identities => (
   traits  => ['Array'],
   is      => 'rw',
   # TODO Hmm... what I really want is:
   # isa    => 'ArrayRef[KiokuX::Model::UserAccounts::Identity]',
   # but that's a Role not a Class... hmmm...    --jhannah 20110328
   isa     => 'ArrayRef[Narwhal::Identity]',
   default => sub { [] },
   handles => {
      all_identities    => 'elements',
      filter_identities => 'grep',
      add_identity      => 'push',
   },
);

no Moose::Role;
1;
