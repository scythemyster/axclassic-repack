# Friends of the Tunarean Court - Tunarean Tasks - Crest of the Fauns
#

sub EVENT_SAY {
  if ($text=~/hail/i) {
    quest::say("Welcome to my fiefdom, wayward $race. I am Duke Shamus Aghllsews of the Tunarean Court. Only those who pledge friendship or membership to the Court are allowed sanctuary in the Wakening Lands.");
  }
  if ($text=~/pledge friendship/i) {
    quest::say("You must first prove your intentions to the Tunarean Court. I will permit you to participate in an oath of friendship only after you bring me four picks used by the Kromrif Laborers that are attempting to build into our lands.");
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 30220 => 4)) {
    quest::emote("grips your hand in his own and recites an oath in an ancient tongue. 'Should you ever seek membership in this court you are required to receive the support of its counts, countesses, barons, and baronesses. Should they deem you worthy you may present their crests to me and with my approval become a citizen of our kingdom. The Kromrif and Kromzek are persistent in their efforts to expand Kael into the forest of Tunare, they are a threat to all houses of the Tunarean Court. A Kromzek architect occasionally visits the building sites. I desire to acquire his blueprints for the expansion of Kael.'");
    quest::summonitem(17865); #empty crest case
  }
  elsif (plugin::check_handin(\%itemcount, 30222 => 1)) {
    quest::say("You have my gratitude, $name. With these blueprints we can better prepare the forests defenses against the giant invaders. I have yet another favor to ask of you as well. Fill this empty bag with crystallized sulfur. When mixed with the crushed herbs in the other bag it will create an explosion strong enough to destroy stone. Take the two full bags into Kael Drakkel and plant it into a crate of the kromzeks building supplies.");
    quest::summonitem(24860); #pouch of herbs
    quest::summonitem(17862); #empty sulfur collection bag
  }
  elsif (plugin::check_handin(\%itemcount, 22855 => 1)) {
    quest::say("You have proven yourself to the Fauns of the Tunarean Court. The destruction of the Kromzeks building supplies will slow their progress for some time.");
    quest::summonitem(24865); #crest of the fauns
  }
  else {
    plugin::return_items(\%itemcount);
    return 1;
  }
   quest::ding(); quest::exp(35000);
  quest::faction(344,10); #tunarean court
}

# EOF zone: wakening ID: 119080 NPC: Shamus_Aghllsews

