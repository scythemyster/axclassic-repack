sub EVENT_SPAWN {
$x = $npc->GetX();
	$y = $npc->GetY();
	quest::set_proximity($x - 10, $x + 10, $y - 10, $y + 10);
    }
sub EVENT_ENTER {
     
	}
sub EVENT_SIGNAL {
    if ($signal == 9000) {
	$client->Message(14,"Something has come alive in a nearby room! Be warned!" );
	$client->CameraEffect(3000, 6);
	quest::signalwith(340108,9050,7500);
	}
	if ($signal == 9075) {
	$client->Message(14,"The rumbling you just felt must have been a sentry that is fully automated! Judging by the magnitude of the power, it must be nearby. Search for this beast and destroy it before it has a chance to destroy you!"); 
	}
 }