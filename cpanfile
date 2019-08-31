requires 'UML::PlantUML::Encoder', '0.02'

on 'test' => sub {
 requires 'Test::More', '1.001014';
 recommends 'Test::Pod', '1.22';
 recommends 'Test::Pod::Coverage', '1.08';
 recommends 'Test::CheckManifest', '0.9';
};

