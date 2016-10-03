//your code here
NormalParticle[] one;
void setup()
{
	size(500,500);
	//your code here
	one = new NormalParticle[100];
	for(int i = 0; i < one.length; i++)
	{
		one[i]= new NormalParticle();
	}
}
void draw()
{
	//your code here
	background(0);
	for(int i = 0; i < one.length; i++)
	{
		one[i].move();
		one[i].show();
	}
}
class NormalParticle
{
	double myX,myY,myColor,speed,angle;
	NormalParticle()
	{
		myX=Math.random()*500;
		myY=Math.random()*500;
		myColor=Math.random()*255;
		speed=Math.random()*10;
		angle=Math.PI;
	}
	void move()
	{
		myX = myX + Math.cos(angle)*speed;
		myY = myY + Math.sin(angle)*speed;
		if(myX < 0 || myX > 600 || myY < 0 ||myY > 600)
			{
				myX = 250;
				myY = 0;
				angle = Math.random() * Math.PI;
			}
	}
	void show()
	{	
		fill((float)myColor+10,(float)myColor+50,(float)myColor+100);
		ellipse((float)myX,(float)myY,10,10);
	}
	//your code here
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
	int myA, myB;
	OddballParticle()
	{
		myA = 300;
		myB = 300;
	}
	void show()
	{
		fill(255,0,100);
		rect(myA, myB, 20,20);
	}
}
class JumboParticle //uses inheritance
{
	//your code here
	int myC, myD;
	JumboParticle(int x, int y)
	{
		myC = x;
		myD = y;
	}
	void show()
	{
		fill(0,255,100);
		triangle(myC, myD, (float)Math.cos(2.03), (float)Math.sin(2.03), 100, 100);
	}
}

