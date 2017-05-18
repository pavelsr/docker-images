use Mojolicious::Lite;
 
get '/' => sub {
  shift->render(text => "Hello world");
};

app->start;