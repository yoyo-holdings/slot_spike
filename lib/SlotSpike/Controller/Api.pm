package SlotSpike::Controller::Api;
use Mojo::Base 'Mojolicious::Controller';

sub get_foo {
  my ( $c, $args, $cb ) = @_;
  my $name = $args->{name} || 'world';
  $c->$cb( { text => "hello, $name!" }, 200 );
}

sub start_machine {
  my ( $c, $args, $cb ) = @_;
  my $user = $args->{user};
  my $res = {};
  push @{ $res->{slots} }, int rand 5 for 1..3;
  $res->{prize} = int rand 1000;
  $c->$cb( $res, 200 );
}

1;
