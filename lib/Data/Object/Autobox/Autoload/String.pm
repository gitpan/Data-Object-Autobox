package Data::Object::Autobox::Autoload::String;

use 5.010;
use strict;
use warnings;

use Carp 'croak';
use Data::Object 'type_string';
use Scalar::Util 'blessed';

sub AUTOLOAD {
    my $self = $_[0] = type_string $_[0];
    my ($package, $method) = our $AUTOLOAD =~ /^(.+)::(.+)$/;
    my $delegate = 'Data::Object::String';

    croak "Undefined subroutine &${delegate}::$method called"
        unless blessed $self && $self->isa($delegate);

    croak "Can't locate object method \"$method\" via package \"$delegate\""
        unless my $source = $self->can($method);

    goto $source; # delegate to Data::Object::String ...
}

1;
