use strict;
use ExtUtils::MakeMaker;

my @libs;
push @libs, '-L/lib/w32api -lwinmm' if $^O eq "cygwin";

WriteMakefile(
    'NAME'		=> 'Win32::Sound',
    'LIBS'		=> \@libs,
    'VERSION_FROM'	=> 'Sound.pm',
    'dist'		=> {COMPRESS => 'gzip -9f', SUFFIX => 'gz'},
    ($] < 5.005 ? () :
      (
	'AUTHOR'	=> 'Aldo Calpini <dada@divinf.it>',
	'ABSTRACT'	=> 'Perl Module to play .WAV files and/or system sounds.',
      )),
);
