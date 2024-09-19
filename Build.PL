use strict;
use warnings;

use Module::Build;
my $build = Module::Build->new(
  module_name => 'Tie::Hash::FixedKeys',
  license => 'perl',
  release_status => 'stable',
  configure_requires => {
    'Module::Build' => '0.4234',
  },
  requires => {
    perl                  => '5.6.0',
    'Attribute::Handlers' => '0.76',
  },
  create_makefile_pl => 'traditional',
  meta_merge => {
    'meta-spec' => { version => 2 },
    resources => {
      repository => {
        type => 'git',
        url  => 'git://github.com/davorg-cpan/tie-hash-fixedkeys.git',
        web  => 'https://github.com/davorg-cpan/tie-hash-fixedkeys',
      },
      bugtracker => {
        web  => 'https://github.com/davorg-cpan/tie-hash-fixedkeys/issues',
      },
    },
  },
);
$build->create_build_script;
