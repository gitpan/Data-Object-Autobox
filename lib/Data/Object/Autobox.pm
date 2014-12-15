# ABSTRACT: An Autobox Implementation for Perl 5
package Data::Object::Autobox;

use 5.010;

use strict;
use warnings;

use base 'autobox';
use Data::Object 'load';

our $VERSION = '0.05'; # VERSION

sub import {
    my $class = shift;

    $class->SUPER::import(
        ARRAY     => load 'Data::Object::Autobox::Array',
        CODE      => load 'Data::Object::Autobox::Code',
        FLOAT     => load 'Data::Object::Autobox::Float',
        HASH      => load 'Data::Object::Autobox::Hash',
        INTEGER   => load 'Data::Object::Autobox::Integer',
        NUMBER    => load 'Data::Object::Autobox::Number',
        SCALAR    => load 'Data::Object::Autobox::Scalar',
        STRING    => load 'Data::Object::Autobox::String',
        UNDEF     => load 'Data::Object::Autobox::Undef',
        UNIVERSAL => load 'Data::Object::Autobox::Universal',
    );

    return;
}

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Data::Object::Autobox - An Autobox Implementation for Perl 5

=head1 VERSION

version 0.05

=head1 SYNOPSIS

    use Data::Object::Autobox;

    my $input  = [1,1,1,1,3,3,2,1,5,6,7,8,9];
    my $output = $input->grep('$a < 5')->unique->sort; # [1,2,3]

    $output->isa('Data::Object::Array');
    $output->join(', '); # 1,2,3

=head1 DESCRIPTION

Data::Object::Autobox implements autoboxing via L<autobox> to provide
L<boxing|http://en.wikipedia.org/wiki/Object_type_(object-oriented_programming)>
for native Perl 5 data types. This functionality is provided by L<Data::Object>
which provides a collection of object classes for handling SCALAR, ARRAY, HASH,
CODE, INTEGER, FLOAT, NUMBER, STRING, UNDEF, and UNIVERSAL data type operations.
Data::Object provides its own boxing strategy in that every method call which
would normally return a native data type will return a data type object, but
this functionality requires an initial data type object. Data::Object::Autobox
makes it so that you do not need to explicitly create the initial data type
object, and once the initial autobox method call is made, the Data::Object
boxing takes over. B<Note: This is an early release available for testing and
feedback and as such is subject to change.>

=head2 Array Methods

Array methods are called on array references, for example, using C<<
$array->method(@args) >>, which will act on the C<$array> reference and will
return a new data type object. Many array methods are simply wrappers around
core functions, but there are additional operations and modifications to core
behavior. Array methods are handled via the L<Data::Object::Array> object class
which is provided to the autobox ARRAY option.

=head2 Code Methods

Code methods are called on code references, for example, using C<<
$code->method(@args) >>, which will act on the C<$code> reference and will
return a new data type object. Many code methods are simply wrappers around
core functions, but there are additional operations and modifications to core
behavior. Code methods are handled via the L<Data::Object::Code> object class
which is provided to the autobox CODE option.

=head2 Float Methods

Float methods are called on float values, for example, using C<<
$float->method(@args) >>, which will act on the C<$float> value and will
return a new data type object. Many float methods are simply wrappers around
core functions, but there are additional operations and modifications to core
behavior. Float methods are handled via the L<Data::Object::Float> object class
which is provided to the autobox FLOAT option.

=head2 Hash Methods

Hash methods are called on hash references, for example, using C<<
$hash->method(@args) >>, which will act on the C<$hash> reference and will
return a new data type object. Many hash methods are simply wrappers around
core functions, but there are additional operations and modifications to core
behavior. Hash methods are handled via the L<Data::Object::Hash> object class
which is provided to the autobox HASH option.

=head2 Integer Methods

Integer methods are called on integer values, for example, using C<<
$integer->method(@args) >>, which will act on the C<$integer> value and will
return a new data type object. Many integer methods are simply wrappers around
core functions, but there are additional operations and modifications to core
behavior. Integer methods are handled via the L<Data::Object::Integer> object
class which is provided to the autobox INTEGER option.

=head2 Number Methods

Number methods are called on number values, for example, using C<<
$number->method(@args) >>, which will act on the C<$number> value and will
return a new data type object. Many number methods are simply wrappers around
core functions, but there are additional operations and modifications to core
behavior. Number methods are handled via the L<Data::Object::Number> object
class which is provided to the autobox NUMBER option.

=head2 Scalar Methods

Scalar methods are called on scalar references and values, for example, using
C<< $scalar->method(@args) >>, which will act on the C<$scalar> reference and
will return a new data type object. Many scalar methods are simply wrappers
around core functions, but there are additional operations and modifications to
core behavior. Scalar methods are handled via the L<Data::Object::Scalar> object
class which is provided to the autobox SCALAR option.

=head2 String Methods

String methods are called on string values, for example, using C<<
$string->method(@args) >>, which will act on the C<$string> value and will
return a new data type object. Many string methods are simply wrappers around
core functions, but there are additional operations and modifications to core
behavior. String methods are handled via the L<Data::Object::String> object
class which is provided to the autobox STRING option.

=head2 Undef Methods

Undef methods are called on undef values, for example, using C<<
$undef->method(@args) >>, which will act on the C<$undef> value and will
return a new data type object. Many undef methods are simply wrappers around
core functions, but there are additional operations and modifications to core
behavior. Undef methods are handled via the L<Data::Object::Undef> object
class which is provided to the autobox STRING option.

=head2 Universal Methods

Universal methods can be called on any values, for example, using C<<
$universal->method(@args) >>, which will act on the reference or value and will
return a new data type object. Many universal methods are simply wrappers around
core functions, but there are additional operations and modifications to core
behavior. Universal methods are handled via the L<Data::Object::Universal>
object class which is provided to the autobox UNIVERSAL option.

=head1 SEE ALSO

=over 4

=item *

L<Data::Object>

=back

=head1 AUTHOR

Al Newkirk <anewkirk@ana.io>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Al Newkirk.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
