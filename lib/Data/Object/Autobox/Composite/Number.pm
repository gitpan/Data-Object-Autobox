package Data::Object::Autobox::Composite::Number;

use 5.010;
use strict;
use warnings;

use Moo 'with';

with 'Data::Object::Role::Number';
with 'Data::Object::Role::Numeric';
with 'Data::Object::Role::Output';

1;
