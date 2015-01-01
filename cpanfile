requires "Data::Object" => "0.04";
requires "Moo" => "1.006001";
requires "autobox" => "2.82";
requires "perl" => "v5.10.0";

on 'test' => sub {
  requires "perl" => "v5.10.0";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "0";
};
