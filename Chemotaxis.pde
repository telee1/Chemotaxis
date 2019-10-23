
Bacteria[] hi; 
int x = 150;
int y = 150;	
 void setup()   
 {  
 background(0);   
 	size(400,400);
 	frameRate(10); 
 	hi = new Bacteria[5];
	for(int i = 0; i < hi.length; i++)
 	{
 		hi[i] = new Bacteria();
 	}

 
 }   
 void draw()   
 {    



 	if (mouseX > x)
 		x = x + (int)(Math.random()*20)-1;
 	else  
 		x = x + (int)(Math.random()*20)-19;
 		

 	if (mouseY > y)
 		y = y + (int)(Math.random()*20)-1;
 	else  
 		y = y + (int)(Math.random()*20)-19;
 	
 	

 	for (int i = 0; i < hi.length; i++)
 	{
 	hi[i].show();
 	hi[i].move();
 	System.out.println(i + ": "+hi[i].myX + " " + hi[i].myY);
 	}
 	
 	
 }
 class Bacteria    
 {     
 	int col, myX, myY;
 	Bacteria()
 	{
 		
 		// myX = myY = 200;   
 		col = color((int)((Math.random()*255)+1), (int)((Math.random()*255)+1) , (int)((Math.random()*400)+1));
 	}

 	void move()
 	{
 	myX =  x + (int)(Math.random()*20)-10;
    myY =  y + (int)(Math.random()*20)-10;

 	}


 	void show()
 	
 	{	
 		fill(0,0,0,5);
	 	stroke(0,0,0,5);
	 	rect(0,0,600,600);

 		noStroke();
 		fill(col);
 		ellipse(myX, myY, 10, 10);
 		
 	}


  } 