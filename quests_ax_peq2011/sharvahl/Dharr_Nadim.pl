#Dharr's Lure Quests	#Zone:sharvahl  ID:155097 -- Dharr_Nadim
sub EVENT_SAY {
if($text=~/Hail/i){   
quest::say("Step up. step up! Please take a moment to purchase some supplies from me. Times are hard and my [luck] has been bad."); }

if($text=~/luck/i){   
quest::say("I have just come from Hollowshade Moor a few weeks ago. My fishing days have been very unprosperous. The lures that I have now are made of low quality Acrylia and scare the fish away rather than attract them. I want to make a new lure, and on my way in I noticed the dull color of the [scorpions].  I would have moved closer to them but unfortunately I am deathly allergic to the poisons found in scorpion venom."); }

if($text=~/scorpions/i){   
quest::say("The scorpions are at the bottom of the canyon surrounding the city. If you can bring me four shells to make a few lures, I will give you my old lure. Be careful making your way down the ledges as there are many steep drops."); }
}

sub EVENT_ITEM {
if(plugin::check_handin(\%itemcount,3648=>4)){   
quest::say("Excellent, hopefully my fishing business can start to thrive once again! As I said before you can have this old lure. You won't be able to catch anything with it but maybe you can pawn it off to a jewelry merchant.");   
quest::summonitem(30694);   
quest::exp(1000);   
quest::ding(); }

plugin::return_items(\%itemcount);
}

#END of FILE Zone:sharvahl  ID:155097 -- Dharr_Nadim
