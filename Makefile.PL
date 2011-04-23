
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'tiny perl module for sending Growl notifications on Mac OS X',
  'AUTHOR' => 'Alex White <VVu@geekfarm.org>',
  'BUILD_REQUIRES' => {
    'English' => '0',
    'Test::More' => '0.88',
    'utf8' => '0'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'Growl-Tiny',
  'EXE_FILES' => [],
  'LICENSE' => 'bsd',
  'NAME' => 'Growl::Tiny',
  'PREREQ_PM' => {
    'Carp' => '0',
    'Exporter' => '0'
  },
  'VERSION' => '0.0.3',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



