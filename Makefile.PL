
use strict;
use warnings;

use 5.010;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "XML parser/representation for ClinicalTrials.gov data",
  "AUTHOR" => "chromatic",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "XML-Parser-ClinicalTrials-Study",
  "EXE_FILES" => [],
  "LICENSE" => "artistic_2",
  "NAME" => "XML::Parser::ClinicalTrials::Study",
  "PREREQ_PM" => {
    "DateTime::Format::Natural" => 0,
    "XML::Rabbit" => 0,
    "XML::Rabbit::Root" => 0,
    "constant" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "File::Slurp" => 0,
    "Test::Most" => 0
  },
  "VERSION" => "1.20140111",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "DateTime::Format::Natural" => 0,
  "File::Slurp" => 0,
  "Test::Most" => 0,
  "XML::Rabbit" => 0,
  "XML::Rabbit::Root" => 0,
  "constant" => 0,
  "strict" => 0,
  "warnings" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



