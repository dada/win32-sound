use ExtUtils::MakeMaker;
WriteMakefile(
    'NAME'		=> 'Win32::Sound',
    'VERSION_FROM'	=> 'Sound.pm',
    'dist'		=> {COMPRESS => 'gzip -9f', SUFFIX => 'gz'},
    ($] < 5.005 ? () :
      (
	'AUTHOR'	=> 'Aldo Calpini <dada@divinf.it>',
	'ABSTRACT'	=> 'Perl Module to play .WAV files and/or system sounds.',
      )),
);
