sub EVENT_SAY {
  if ($text=~/hail/i) {
    quest::say("Away from Carver Cagrek you get!! Me's a busy troll. Must punish enmees of Grobb and feeds trolls a plenty. Trolls complain [meats] no good, complains dey want sum [special bread]. Dey says dey hears ogres have special meat which taste better den pris'ners of Grobb. Do you knows name of meat? What kinda meat dat be? Tell me!!");
  }
  if ($text=~/special bread/i) {
    quest::say("It little known secret among trolls dat Cagrek know how to make tatsy bread from halfling. Dey say dere is plenty of dem out in the forest, ripe for the picking!! You bring carver Cagrek four of their tender little feet bones.");
  }
  if ($text=~/meats/i) {
    quest::say("It's not like the old days when I could make HEHE meat. Chef Dooga in Oggok makes da best HEHE meat. You should try some. In fact, bring me 3 HEHE meats and the recipe, and I'll reward you for it.  That'd make all dese trolls quiet again.");
  }  
  
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 16183 => 4)) {
    quest::say("Whut tooks you so long!! Ah, dis please Cagrek as I can grind dese up to make special bread. Me get on that right away. Here is you reward, now out of Cagrek's way.");
    quest::summonitem(28243);
    quest::faction( 131, 15);
  }
  elsif (plugin::check_handin(\%itemcount, 13368 => 3, 18940 => 1)) { # 3 HEHE Meat and 1 Tattered Recipe
    quest::say("Ah, at last!  Thanks. Here you go. Take this and find your own meat recipes.");
    quest::summonitem(5413);
    quest::faction(46, 20);
  }
  else {
    plugin::return_items(\%itemcount);
    quest::say("This isn't what I need to shuddup hungry troll stomachs.");  }
}