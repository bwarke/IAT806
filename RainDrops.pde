class RainDrops { //creating class RainDrops
 color c;
 float xpos;
 float ypos;
 float speed;
 boolean isClicked;
 
 RainDrops(color tempC, float tempXpos,
 float tempYpos, float tempspeed) {
 c = tempC;
 xpos = tempXpos;
 ypos = tempYpos;
 speed = tempspeed;
 isClicked = false;
 }
 
 void update() { //Update for continuous flow of Raindrops
   if (!isClicked) {
     display();
   }
   else { //if the raindrop is selected, it disappears
     noStroke();
     noFill();
   }
   fall();
 }
 
 void display() {
 noStroke();
 fill(c);
 ellipseMode(CENTER);
 ellipse(xpos,ypos,50,50);
 }
 
 void fall() {
 ypos = ypos + speed;
 if (ypos>=height+50) {
 xpos = random(0,500);  
 ypos = -50 ;
 isClicked = false;
 }
 }
 
int getScore () { //return a positive score everytime a rain drop is clicked on
 if (mousePressed && !isClicked && (mouseX>=xpos-25 && mouseX<=xpos+25) && (mouseY>=ypos-25 && mouseY<=ypos+25)){
   isClicked=true;
   return 1;
 }
 return 0;
 }
}
