my $history_event = 0;

 
  sub EVENT_SPAWN {
  $history_event = 0;
  $counter = undef;
  }
sub EVENT_SIGNAL {
    if ($signal == 312) {
	 $history_event += 1; # adds one to spawn variable # 
	}
	if($signal == 313) { #signal 313 is from each Guardian_of_the_Halls Protector_of_the_Halls and Defender_of_the_Halls#
    $counter += 1;
      if($counter == 3) {
	quest::depop(340054); #depop Artifact non attackable#
	quest::spawn2(340055); #spawn killable artifact#
	}
   }
 }



