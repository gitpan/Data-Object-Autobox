package Data::Object::Autobox::Composite::Integer;

use 5.010;
use strict;
use warnings;

use Moo 'with';

with 'Data::Object::Role::Integer';
with 'Data::Object::Role::Numeric';
with 'Data::Object::Role::Output';

1;
