use ExtUtils::MakeMaker;
WriteMakefile(
    'NAME'	=> 'Win32::Sound',
    'VERSION_FROM' => 'Sound.pm', # finds $VERSION
    'dist'	=> {COMPRESS => 'gzip -9f', SUFFIX => 'gz'},
    'dynamic_lib' => { 'OTHERLDFLAGS' => q[winmm.lib advapi32.lib user32.lib] },
#    'INC'	=> '-I.\\include',
);
