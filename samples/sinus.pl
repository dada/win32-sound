use Win32::Sound;

# Create the object
$WAV = new Win32::Sound::WaveOut(44100, 8, 2);

$data = ""; 
$counter = 0;
$increment = 440/44100;

# Generate 44100 samples ( = 1 second)
for $i (1..44100) {

    # Calculate the pitch 
    # (range 0..255 for 8 bits)
    $v = sin($counter/2*3.14) * 128 + 128;    

    # "pack" it twice for left and right
    $data .= pack("cc", $v, $v);

    $counter += $increment;
}

$WAV->Load($data);       # get it
$WAV->Write();           # hear it
1 until $WAV->Status();  # wait for completion
$WAV->Save("sinus.wav"); # write to disk
$WAV->Unload();          # drop it
