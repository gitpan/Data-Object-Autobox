package Data::Object::Autobox::Universal;

use 5.010;
use strict;
use warnings;

use Carp 'croak';
use Data::Object 'type_universal';
use Scalar::Util 'blessed';

sub AUTOLOAD {
    my $self = $_[0] = type_universal $_[0];
    my ($package, $method) = our $AUTOLOAD =~ /^(.+)::(.+)$/;
    my $delegate = 'Data::Object::Universal';

    croak "Undefined subroutine &${delegate}::$method called"
        unless blessed $self && $self->isa($delegate);

    croak "Can't locate object method \"$method\" via package \"$delegate\""
        unless my $source = $self->can($method);

    goto $source; # delegate to Data::Object::Universal ...
}

1;
