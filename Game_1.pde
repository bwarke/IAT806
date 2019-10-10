/* The player collects as many cool-coloured raindrops as possible by clicking on them. But, there is a twist,
if the player accidentally clicks on a warm-coloured droplet they get poisoned and die. 
It's the irony of climate change in the form a game - juxtaposing the increasing droughts, floods and acid rains in different parts of the world.*/ 

RainDrops[] drops = new RainDrops[10]; // Declare/create the references to classes
Poison[] poisonDrops = new Poison [5]; // Poison drops are half the number of Rain drops
int p; //counter for keeping score

void setup() {
 size(500,500);
 for (int i=0; i<drops.length; i++){ //creating objects
 drops[i]= new RainDrops(color(random(0,50),random(0,150),255),random(0, 500), 0, random(1,5));
 } //cool colours for Rain
 for (int j=0; j<poisonDrops.length; j++){ 
 poisonDrops[j] = new Poison (color(255,random(0,150), random(0,50)),random(0, 500), 0, random(2,7));
} //warm colours for Poison
}

void draw() {
 background(255);
 for(int i=0; i<drops.length; i++) {
//Rain drops will fall continuously
 drops[i].update();
 p = p + drops[i].getScore(); //everytime player clicks on a Rain drop, the score increases
 }
 println(p);
 
 for (int j=0; j<poisonDrops.length; j++){
 poisonDrops[j].update(); // Poison drops fall continuously
 if(poisonDrops[j].kill()){ //If player clicks on Poison drop, the game ends
 noLoop(); //end game
 background(0);
 fill(255);
 textAlign(CENTER, CENTER);
 textSize(28);
 text("Game Over! Your score is "+p, 250, 250 ); //display final score
 break;
 }
 }
}
