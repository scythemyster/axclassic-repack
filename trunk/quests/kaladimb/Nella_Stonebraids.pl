sub EVENT_SAY {
  if ($text=~/hail/i) {
    quest::emote("Nella Stonebraids glances your direction, then returns to what she was doing.");
	quest::say("Hail to you $name, What can I do for you?");
  }
  if ($text=~/dinner/i) {
    quest::say("Ach! I forgot me husband's dinner. I'm so sorry. I was sendin' my wishes ta Brell for health and long life. I was just floatin' coins into the wishin' pool. Usually it's for children but things haven't been so good lately. Here, please take this to him and tell him where I was.");
    quest::summonitem(29007);
    quest::depop();
  }
}

sub EVENT_ITEM {
  quest::say("I do not need this.");
  plugin::return_items(\%itemcount);
}