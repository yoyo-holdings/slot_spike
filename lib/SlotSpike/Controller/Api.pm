package SlotSpike::Controller::Api;
use Mojo::Base 'Mojolicious::Controller';

sub get_foo {
  my ( $c, $args, $cb ) = @_;
  my $name = $args->{name} || 'world';
  $c->$cb( { text => "hello, $name!" }, 200 );
}

1;
