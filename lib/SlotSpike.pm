package SlotSpike;
use Mojo::Base 'Mojolicious';
use SlotSpike::Model::Users;

# This method will run once at server start
sub startup {
  my $self = shift;

  # Documentation browser under "/perldoc"
  $self->plugin('PODRenderer');

  # Swagger2 plugin
  $self->plugin('Swagger2', url => $self->home->rel_file('api.yaml') );

  # Users model
  $self->helper( users => sub { state $users = SlotSpike::Model::Users->new } );

  # Router
  my $r = $self->routes;

  # Normal route to controller
  $r->get('/')->to('example#welcome');

  # Auth
  $r->any('/login')->to('login#index');
  $r->get('/logout')->to('login#logout');
  my $logged_in = $r->under('/')->to('login#login');

  # slot machine
  $logged_in->get('/slots')->to('slots#index');
}

1;
