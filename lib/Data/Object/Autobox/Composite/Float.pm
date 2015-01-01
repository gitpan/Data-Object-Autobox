package Data::Object::Autobox::Composite::Float;

use 5.010;
use strict;
use warnings;

use Moo 'with';

with 'Data::Object::Role::Float';
with 'Data::Object::Role::Numeric';
with 'Data::Object::Role::Output';

1;
