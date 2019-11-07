 //declare bacteria variables here   
 Ant[] woah;
 void setup(){     
 	size(600,800);
 	frameRate(10);
 	woah = new Ant [10];
 	for(int i = 0; i < woah.length; i++){
 		woah[i] = new Ant();
 	}
 }   
 void draw(){    
 	background(255, 204, 0);
 	textSize(24);
 	text("Ants are gross.", 300,200);
 	for(int i = 0; i < woah.length; i++){
 		woah[i].show();
 		woah[i].move();
 	}
 }
 void mousePressed(){
 	redraw();
 }  
 class Ant    
 {     
 	int myX, myY, myColor;

 	Ant(){
 		myX = 100;
 		myY = 50;
 		myColor = (int)(Math.random() * 254) + 1;
 		move();
 	}
 	void move(){
 		if(mouseX < myX){
 			myX = myX + (int)(Math.random() * 130) - 100;
 		} else {
 			myX = myX + (int)(Math.random() * 130) + 100;
 		}

 		if(mouseY < myY){
 			myY = myY + (int)(Math.random() * 130) - 100;
 		} else {
 			myY = myY + (int)(Math.random() * 130) + 100;	
 		}
 	}
 	void show(){
 		fill(0);
 		strokeWeight(3);
ellipse(myX,myY,25,25);
ellipse(myX+25,myY,30,30);
ellipse(myX-25,myY,30,30);
line(myX,myY-10,myX+5,myY-25);
line(myX+5,myY-25,myX-25,myY-30);

line(myX+5,myY-5,myX+20,myY-30);
line(myX+20,myY-30,myX+30,myY-30);

line(myX+5,myY+5,myX+20,myY+30);
line(myX+20,myY+30,myX+30,myY+30);

line(myX,myY+10,myX+5,myY+25);
line(myX+5,myY+25,myX-25,myY+30);

line(myX-25,myY+15,myX-35,myY+25);
line(myX-35,myY+25,myX-55,myY+25);

line(myX-25,myY-15,myX-35,myY-25);
line(myX-35,myY-25,myX-55,myY-25);

line(myX+30,myY-5,myX+50,myY-20);
line(myX+30,myY,myX+50,myY+15);

 	}
 } 
     
