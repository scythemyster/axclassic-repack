#BeginFile: Salinsa_Delfdosan.pl
#Quests for North Freeport - Salinsa Delfdosan: Ordained Armor Quests (Cleric Newbie Armor)

sub EVENT_SAY {
  if($text=~/hail/i) {
    quest::say("Pleasure to meet you $name. I am Lady Salinsa Deifdosan of House Marr. I have spent many hours on the battlefield in service of our glorious god however these days I spend my time training new [recruits].");
  }
  if($text=~/recruits/i) {
    quest::say("Well you see sense I am such a well seasoned adventurer my knowledge is very helpful to the young members of our house. That is why I have developed a system of hunting and gathering assignments that reward the new recruit with a set of armor that they work very hard to craft themselves. Are you a [young cleric of House Marr]? If so I will be happy to offer my assignments to you.");
  }
  if($text=~/young cleric of house marr/i) {
    quest::say("Great! Let me first begin by explaining how you will be creating your own armor. You will use this magical kit I have presented you with to gather numerous [recipe components]. Your magical kit will be used to gather specific materials that will form together in certain numbers and quantities to create an armor material. You must then take the material you have fashioned to a forge along with armor molds that I will supply you with to create your armor.");
  }
  if($text=~/recipe components/i) {
    quest::say("There are many different items that you will need to collect for your material components in all areas surrounding Freeport and our temple. I will be able to supply you with the mold for any armor piece you [want] to craft. I have the molds and recipes necessary for [Helms], [Bracers], [Armguards], [Boots], [Greaves], [Gauntlets] and [Breastplates]. When you are ready to craft a piece simply tell me what piece you would like to craft. For example if you wanted to create boots you would say, 'I want to craft boots'.");
  }
  if($text=~/i want to craft a helm/i) {
    quest::say("Any cleric should always be very selective about what headpiece they choose for it can mean the difference between life and death. To create your helm material you will need to combine 2 Bricks of Crude Iron Ore, 1 Leaf Scarab Carapace , 1 Armadillo Tooth and 2 Fish Scales in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Helm of the Ordained.");
    quest::summonitem(17259); #Gem Encrusted Mail Kit
    quest::summonitem(22610); #An Enchanted Helm Mold
  }
  if($text=~/i want to craft a bracer/i) {
    quest::say("Bracers should be worn at all times on the battlefield. If an enemy was to wound you about the wrist area you may find it difficult to channel your spell. To create your bracer material you will need to combine 1 Bricks of Crude Iron Ore, 1 Young Puma Skin, 1 Snake Egg and 1 Malachite in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Bracer of the Ordained.");
    quest::summonitem(17259); #Gem Encrusted Mail Kit
    quest::summonitem(22611); #An Enchanted Bracer Mold
  }
  if($text=~/i want to craft an armguard/i) {
    quest::say("'Armguards are a definite must when you are out training. Being wounded about the arms due to no armor protection can be quite devastating. To create your armguard material you will need to combine 2 Bricks of Crude Iron Ore, 2 Giant Fire Beetle Brains, 1 Lion Mane and 1 Wine Yeast in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Armguards of the Ordained.");
    quest::summonitem(17259); #Gem Encrusted Mail Kit
    quest::summonitem(22613); #An Enchanted Armguard Mold
  }
  if($text=~/i want to craft boots/i) {
    quest::say("Boots are one of your more important armor pieces I must say. To create your boot material you will need to combine 3 Bricks of Crude Iron Ore, 1 Large Leaf Scarab Leg , 2 Spiderling Eyes in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Boots of the Ordained.");
    quest::summonitem(17259); #Gem Encrusted Mail Kit
    quest::summonitem(22612); #An Enchanted Boot Mold
  }
  if($text=~/i want to craft greaves/i) {
    quest::say("Pants are a must on the battlefield for reasons that I should not have to mention! To create your greaves material you will need to combine 4 Bricks of Crude Iron Ore, 1 Deathfist Orc Skull, 1 Zombie Skin , 1 Bottle and 1 Lion Tail in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Greaves of the Ordained.");
    quest::summonitem(17259); #Gem Encrusted Mail Kit
    quest::summonitem(22614); #An Enchanted Greaves Mold
  }
  if($text=~/i want to craft guantlets/i) {
    quest::say("Gauntlets will be a very important part of your armor set because it is extremely important that you keep your hands free from harm or you will find yourself having troubles with your spellcasting. To create your gauntlets material you will need to combine 3 Bricks of Crude Iron Ore, 1 Black Bear Paw, 1 Giant Scarab Brain , and 2 Spider Legs in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Gauntlets of the Ordained.");
    quest::summonitem(17259); #Gem Encrusted Mail Kit
    quest::summonitem(22615); #An Enchanted Gauntlet Mold
  }
  if($text=~/i want to craft a breastplate/i) {
    quest::say("I am very proud to have seen my newest student progress through their training so fast. I have no doubt that the time has come for you to craft your Breastplate of the Ordained. To create your breastplate material you will need to combine 5 Bricks of Crude Iron Ore, 1 Preserved Snake Eye, 1 Young Kodiak Paw, 1 Snake Bile and 1 Large Leaf Scarab Leg in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Breastplate of the Ordained. Please return to me when you are finished with your breastplate for one [final mission].");
    quest::summonitem(17259); #Gem Encrusted Mail Kit
    quest::summonitem(22616); #An Enchanted Breastplate Mold
  }
  if($text=~/final mission/i) {
    quest::say("As you must already know the Freeport Militia has been a thorn in our side ever sense they were trusted to care for our city during the crusade. Things have never been the same sense then and things are actually starting to get worse. There have been numerous reports of Freeport Militia soldiers harassing all those that do not follow their rules of tyranny. My sister was bringing me a newsletter from qeynos when she was abducted. She escaped but [Deisnak] stole the newsletter she was delivering to me.");
  }
  if($text=~/deisnak/i) {
    quest::say("Deisnak is a high ranking officer in the Freeport Militia, some would even call him untouchable. I need you to retrieve my newsletter for me by all means necessary. It had some very important messages from Qeynos and I must have it. Return to me with my newsletter and two Pristine Scarab Eyes and I will reward you greatly for your efforts.");
  }
}

sub EVENT_ITEM {
  if(plugin::check_handin(\%itemcount, 9931 => 1, 9932 => 2)) { #A Torn Qeynos Newsletter and  (2)
    quest::say("Yes, finally I can read the messages from Qeynos. Please take this as a reward for your efforts."); #Real text still needed
    quest::summonitem(9937); #Mace of the Ordained
  }
  else {
    quest::say("I have no need for this, $name.");
  }
}
#END of FILE Zone:freportn  ID:8016 -- Salinsa_Delfdosan