#######################################
## NPC: Casino                       ##
## Zone: Plane of Knowledge          ##
## Quest: None                       ##
## Created by Caved for AXClassic    ##
## The Rathe Server     10-07-2014   ##
#######################################
sub EVENT_SAY {

  if ($text=~/hail/i) {
    $client->Message(14,"Hello $name , WELCOME to the Casino, in the future I will roll the diece for you so you can win grand prices. You will need to give me 1 Small Gold Token (you can buy them from the vendor on the right) to spin the diece. But not yet my friend be patient I am not yet functional! My friend Caved is teaching me how to run the Casino as we speak.");
  }
}