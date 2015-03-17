package SlotSpike::Controller::Api;
use Mojo::Base 'Mojolicious::Controller';

sub get_foo {
  my ( $c, $args, $cb ) = @_;
  my $name = $args->{name} || 'world';
  $c->$cb( { text => "hello, $name!" }, 200 );
}

sub start_machine {
  my ( $c, $args, $cb ) = @_;
  $c->$cb( { text => "slot result" }, 200 );
}

1;
