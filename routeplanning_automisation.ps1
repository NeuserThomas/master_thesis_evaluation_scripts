Write-Host "Starting routeplanning script"


$longitudes = 5.119548602502788, 4.909231897392274, 4.694778480830695, 4.482384396105652, 4.269993282591287, 4.052562506659818, 3.703590167698989, 3.6249592712553103, 3.4124939179432756, 3.1877779
$latitudes = 50.9007100381721, 50.8677021119908, 50.86961596036194, 50.8501856757584, 50.82743681546097, 50.829649067648475, 50.79883767665912, 50.831139018777044, 50.81749792183927, 50.7980187
For ($i=1; $i -le 10; $i++){
	$km = $i*15

	For($j=0; $j -lt 5; $j++){
		"" | Out-File $args[0] -Append
		"" | Out-File $args[0] -Append
		"HAVERSINE $km" | Out-File $args[0] -Append
		"" | Out-File $args[0] -Append
		.\TimeMem-1.0.exe node $args[1] $longitudes[$i-1] $latitudes[$i-1] | Out-File $args[0] -Append
	}
	
	"----------------------------------------------------------------------------------" | Out-File $args[0] -Append

}
