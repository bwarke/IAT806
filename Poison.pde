class Poison extends RainDrops { //Poison drops is a part of RainDrops class with similar functionality
Poison (color tempC, float tempXpos, float tempYpos, float tempXspeed){
 super(tempC,tempXpos,tempYpos,tempXspeed);
}

 void update() {
   display();
   fall();
 }
 
 boolean kill () { //end the game if player clicks Poison drop
 if (mousePressed && !isClicked && (mouseX>=xpos-25 && mouseX<=xpos+25) && (mouseY>=ypos-25 && mouseY<=ypos+25)){
   isClicked=true;
   return true;
 }
 return false;
 }
}
