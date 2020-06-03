print "Starting parsing\n";

open($fh, "<", $ARGV[0]) or die "Cant open";
open($fw, ">", $ARGV[1]) or die "Cant open 2";
$count=0;
$haversine=15;

while(<$fh>){

  if($_ =~ /Num of req: ([0-9]+)/){
     if($count == 0){
       print "Haversine $haversine,\n";
       print $fw "Haversine $haversine,\n";
     }
    $count++;
  }
  if($_ =~ /Num of req: ([0-9]+)/){
    print "$1,";
    print $fw "$1,";
  }
  if($_ =~ /Elapsed time +: ([0-9]+\.[0-9]+)/){
    print "$1,";
    print $fw "$1,";
  }
  if($_ =~ /Kernel time +: ([0-9]+\.[0-9]+) \(([0-9]+\.[0-9])\%\)/){
    print "$1,$2,";
    print $fw "$1,$2,";
  }
  if($_ =~ /User time +: ([0-9]+\.[0-9]+) \(([0-9]+\.[0-9])\%\)/){
    print "$1,$2,\n";
    print $fw "$1,$2,\n";
  
  if($count == 5){
    print ",\n";
    print $fw ",\n";
    $count=0;
    $haversine+=15;
  }
  }
}
close($fh);
close($fw);
