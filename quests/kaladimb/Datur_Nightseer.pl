sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Welcome to our temple.  We are the paladins of the Church of Underfoot.  I am lord of our holy order.  I call upon you to assist us in the defense of Kaladim.  Speak with the master paladins or priests and find ways to prove your allegiance to Brell."); }
}

sub EVENT_ITEM {
if(plugin::check_handin(\%itemcount, 18768 => 1)){
quest::say("Welcome to Miners Guild 249, also known as the Church of Underfoot. Here,take this tunic and wear it proudly $name. May Brell go with ye!");
quest::summonitem(13514);
quest::ding();
quest::faction(44, 4);  #clerics of underfoot
quest::faction(169, 4);  #kazon stormhammer
quest::faction(219, 4);  #miners guild 249
quest::exp(1000); 
quest::rebind(67,129,1342,46);
}
else { 
    #do all other handins first with plugin, then let it do disciplines
    plugin::try_tome_handins(\%itemcount, $class, 'Paladin');
    plugin::return_items(\%itemcount);
    quest::say("I have no need of this, take it back.");
 }
}
#END of FILE Zone:kaladimb  ID:67029 -- Datur_Nightseer 
