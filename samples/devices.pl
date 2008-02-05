use Win32::Sound;

%order = qw(
    name                1
    driver_version      2
    manufacturer_id     3
    product_id          4
);

@devs = Win32::Sound::Devices();

foreach $dev (@devs) {
    print "$dev:\n";
    %inf = Win32::Sound::DeviceInfo($dev);
    foreach $key (
    sort { 
        ($order{$a} or 99) <=> ($order{$b} or 99)
    } keys %inf) {
        print "\t$key => $inf{$key}\n";
    }
}

