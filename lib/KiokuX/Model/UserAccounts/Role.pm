package KiokuX::Model::UserAccounts::Role;
use Moose::Role;

with qw(KiokuDB::Role::ID);

sub id_for_role {
    my ( $self, $id ) = @_;
    return "role:$id"
}

sub kiokudb_object_id {
    my $self = shift;
    $self->id_for_role($self->id);
}

has id => (
    isa => "Str",
    is  => "ro",
    required => 1,
);


no Moose::Role;

1;
