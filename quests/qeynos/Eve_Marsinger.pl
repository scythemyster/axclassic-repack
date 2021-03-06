#############
#Quest Name: Bard Mail Quest
#Author: RealityIncarnate
#NPCs Involved: Tralyn Marsinger, Eve Marsinger, Lislia Goldtune, Felisity Starbright, Jakum Webdancer, Ton Twostring, Idia, Sivina Lutewhisper, Ticar Lorestring, Marton Stringsinger, Drizda Tunesinger, Travis Two Tone, Silna Songsmith, Siltria Marwind, Tacar Tissleplay, Kilam Oresinger, Lyra Lyrestringer 
#Items Involved: Bardic letters: 18150-18167
#################

sub EVENT_SAY {
my $interested = quest::saylink("interested", 1);
my $High = quest::saylink("Highpass", 1);
my $Free = quest::saylink("Freeport", 1);
if($text=~/Hail/i){
quest::say("Hail, $name - Are you $interested in helping the League of Antonican Bards by delivering some mail?");
}

if($text=~/interested/i){
quest::say("I have messages that need to go to Highpass and to Freeport.  Will you deliver mail to $High or $Free for me?");
}

if($text=~/highpass/i){
quest::say("Take this pouch to Lislia Goldtune in Highpass.  You can find her at the entrance to HighKeep.  I am sure she will compensate you for your troubles.");
quest::summonitem("18152");
}

if($text=~/Freeport/i){
quest::say("Take this letter to Felisity Starbright in Freeport.  You can find her at the bard guild hall.  I am sure she will compensate you for your troubles.");
quest::summonitem("18155");
}

if($text=~/mail/i){
quest::say("The League of Antonican Bards has a courier system made up of travelers and adventurers.  We pay good gold to anyone who will take messages from bards such as myself to one of our more distant offices.  Are you $interested?"); }

}

sub EVENT_ITEM { 
if (plugin::check_handin(\%itemcount, 18165 => 1)) {
    quest::say("More mail - you have done us a noteworthy service!  Please take this gold for your troubles.  If you are interested in more work, just ask me.");
    quest::givecash(0,0,quest::ChooseRandom(11,12,13,14,15),0);
     quest::ding(); quest::exp(150);
    quest::faction(192,10); #league of antonican bards
    quest::faction(184,10); #knights of truth
    quest::faction(135,10); #guards of qeynos
    quest::faction(273,-30); #ring of scale
    quest::faction(207,-30); #mayong mistmoore
  }

else {
    quest::say("I have no need for that.");
    plugin::return_items(\%itemcount);
  }
}

#END of FILE Zone:qeynos