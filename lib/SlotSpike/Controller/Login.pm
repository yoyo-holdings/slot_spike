package SlotSpike::Controller::Login;
use Mojo::Base 'Mojolicious::Controller';

sub index {
  my $c = shift;

  my $user = $c->param('user') || '';
  my $pass = $c->param('pass') || '';

  return $c->render
      unless $c->users->check( $user, $pass );

  $c->session( user => $user );
  $c->redirect_to('slots');
}

sub login {
  my $c = shift;
  return 1 if $c->session('user');
  $c->redirect_to('login');
  undef;
}

sub logout {
  my $c = shift;
  $c->session( expires => 1 );
  $c->redirect_to('login');
}

1;
