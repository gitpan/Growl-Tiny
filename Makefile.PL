
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Growl-Tiny',
  NAME      => 'Growl::Tiny',
  AUTHOR    => 'Alex\ White\ \<VVu\@geekfarm\.org\>',
  ABSTRACT  => 'tiny\ perl\ module\ for\ sending\ Growl\ notifications\ on\ Mac\ OS\ X',
  VERSION   => '0.0.2',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'bsd') : ()),
  PREREQ_PM    => {
    "base" => '0',
    "Test::More" => '0',
    "Carp" => '0',
    "utf8" => '0',
  },
  test => {TESTS => 't/*.t'}
);

