package Data::Object::Autobox::Hash;

use 5.010;
use strict;
use warnings;

use Carp 'croak';
use Data::Object 'type_hash';
use Scalar::Util 'blessed';

sub AUTOLOAD {
    my $self = $_[0] = type_hash $_[0];
    my ($package, $method) = our $AUTOLOAD =~ /^(.+)::(.+)$/;
    my $delegate = 'Data::Object::Hash';

    croak "Undefined subroutine &${delegate}::$method called"
        unless blessed $self && $self->isa($delegate);

    croak "Can't locate object method \"$method\" via package \"$delegate\""
        unless my $source = $self->can($method);

    goto $source; # delegate to Data::Object::Hash ...
}

1;
