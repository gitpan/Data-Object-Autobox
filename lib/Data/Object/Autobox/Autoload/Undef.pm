package Data::Object::Autobox::Autoload::Undef;

use 5.010;
use strict;
use warnings;

use Carp 'croak';
use Data::Object 'type_undef';
use Scalar::Util 'blessed';

sub AUTOLOAD {
    my $self = $_[0] = type_undef $_[0];
    my ($package, $method) = our $AUTOLOAD =~ /^(.+)::(.+)$/;
    my $delegate = 'Data::Object::Undef';

    croak "Undefined subroutine &${delegate}::$method called"
        unless blessed $self && $self->isa($delegate);

    croak "Can't locate object method \"$method\" via package \"$delegate\""
        unless my $source = $self->can($method);

    goto $source; # delegate to Data::Object::Undef ...
}

1;
