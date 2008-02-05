use ExtUtils::MakeMaker;
WriteMakefile(
    'NAME'	=> 'Win32::Sound',
    'VERSION_FROM' => 'Sound.pm',
    'dist'	=> {COMPRESS => 'gzip -9f', SUFFIX => 'gz'},
#    'INC'	=> '-I.\\include',
);
