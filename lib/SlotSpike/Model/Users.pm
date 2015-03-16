package SlotSpike::Model::Users;
use Mojo::Base -base;

my $USERS = {
    foo => 'kittehs',
    bar => 'goats',
    baz => 'corgis',
};

sub check {
    my ( $self, $user, $pass ) = @_;
    return 1 if $USERS->{$user} && $USERS->{$user} eq $pass;
    undef;
}

1;
