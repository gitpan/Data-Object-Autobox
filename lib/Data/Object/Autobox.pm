# ABSTRACT: An Autobox Implementation for Perl 5
package Data::Object::Autobox;

use 5.10.0;

use strict;
use warnings;

use base 'autobox';
use Data::Object 'load';

our $VERSION = '0.02'; # VERSION

sub import {
    my $class = shift;

    $class->SUPER::import(
        ARRAY     => load 'Data::Object::Array',
        CODE      => load 'Data::Object::Code',
        FLOAT     => load 'Data::Object::Float',
        HASH      => load 'Data::Object::Hash',
        INTEGER   => load 'Data::Object::Integer',
        NUMBER    => load 'Data::Object::Number',
        SCALAR    => load 'Data::Object::Scalar',
        STRING    => load 'Data::Object::String',
        UNDEF     => load 'Data::Object::Undef',
        UNIVERSAL => load 'Data::Object::Universal',
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

version 0.02

=head1 SYNOPSIS

    use Data::Object::Autobox;

    my $input  = [1,1,1,1,3,3,2,1];
    my $output = $input->unique->sort; # [1,2,3]

    $output->isa('Data::Object::Array');
    $output->join(', '); # 1,2,3

=head1 DESCRIPTION

Data::Object::Autobox implements autoboxing via L<Data::Object> to provide
L<boxing|http://en.wikipedia.org/wiki/Object_type_(object-oriented_programming)>
for native Perl 5 data types. B<Note: This is an early release available for
testing and feedback and as such is subject to change.>

=head1 AUTHOR

Al Newkirk <anewkirk@ana.io>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Al Newkirk.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
