use Test::More;

use_ok 'Data::Object::Autobox';

use_ok 'Data::Object::Autobox::Autoload::Number';
use_ok 'Data::Object::Autobox::Autoload::Scalar';
use_ok 'Data::Object::Autobox::Autoload::Hash';
use_ok 'Data::Object::Autobox::Autoload::Array';
use_ok 'Data::Object::Autobox::Autoload::String';
use_ok 'Data::Object::Autobox::Autoload::Integer';
use_ok 'Data::Object::Autobox::Autoload::Universal';
use_ok 'Data::Object::Autobox::Autoload::Float';
use_ok 'Data::Object::Autobox::Autoload::Code';
use_ok 'Data::Object::Autobox::Autoload::Undef';

use_ok 'Data::Object::Autobox::Composite::Number';
use_ok 'Data::Object::Autobox::Composite::Scalar';
use_ok 'Data::Object::Autobox::Composite::Hash';
use_ok 'Data::Object::Autobox::Composite::Array';
use_ok 'Data::Object::Autobox::Composite::String';
use_ok 'Data::Object::Autobox::Composite::Integer';
use_ok 'Data::Object::Autobox::Composite::Universal';
use_ok 'Data::Object::Autobox::Composite::Float';
use_ok 'Data::Object::Autobox::Composite::Code';
use_ok 'Data::Object::Autobox::Composite::Undef';

ok 1 and done_testing;
