package SlotSpike::Controller::Slots;
use Mojo::Base 'Mojolicious::Controller';

sub index {
    my $c = shift;
    $c->render( user => $c->session('user') );
}

1;
