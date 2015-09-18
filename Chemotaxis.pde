 Bacteria [] colonyOne;  

 void setup()   
 {     
 	background(0);
 	size(800,800);
 	colonyOne = new Bacteria[500];
 	for(int i = 0; i < colonyOne.length; i++)
 	{
 		colonyOne[i] = new Bacteria((int)(Math.random()*800),(int)(Math.random()*800));
 	}
 }   

 void draw()   
 {    

 	fill(0);
 	rect(0,0,1000,1000);
 	for(int i = 0; i < colonyOne.length; i++)
 	{
 	colonyOne[i].move();
 	colonyOne[i].show();
 	}   
 }  

 class Bacteria    
 {     
 	  int myX, myY, theSize; 
 	  Bacteria(int x, int y)
 	  {
 	  	myX = x;
 	  	myY = y;
 	  	
 	  	theSize = (int)(Math.random()*9)+7;
 	  }
 	  void move()
 	  {
 	  	myX = myX + (int)(Math.random()*3)-1;
 	  	myY = myY + (int)(Math.random()*3)-1;
 	  }
 	  void show()
 	  {
 	  	noStroke();
 	  	fill(random(0,255), random(0,255), random(0,255));
 	  	ellipse(myX, myY, theSize, theSize);
 	  }
 }    
