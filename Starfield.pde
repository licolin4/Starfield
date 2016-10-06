//your code here
Particle[] one;
void setup()
{
	size(500,500);
	//your code here
	one = new Particle[100];
	for(int i = 0; i < one.length; i++)
	{
		one[i]= new NormalParticle();
	}
	one[98] = new OddballParticle();
	one[99] = new JumboParticle();
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
class NormalParticle implements Particle
{
	double myX,myY,myColor,mySize,speed,angle;
	NormalParticle()
	{
		myX=Math.random()*500;
		myY=Math.random()*500;
		mySize=Math.random()*10+1;
		myColor=Math.random()*255;
		speed=Math.random()*10;
		angle=Math.PI;
	}
	public void move()
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
	public void show()
	{	
		fill((float)myColor-10,(float)myColor+50,(float)myColor+100);
		ellipse((float)myX,(float)myY,(float)mySize,(float)mySize);
	}
	//your code here
}
interface Particle
{
	//your code here
	public void move();
	public void show();
}
class OddballParticle implements Particle//uses an interface
{
	//your code here
	int myA, myB;
	OddballParticle()
	{
		myA = 100;
		myB = 300;
	}
	public void move()
	{
		myA = myA + (int)(Math.random()*5)-2;
		myB = myB + (int)(Math.random()*5)-2;
	}
	public void show()
	{
		fill(200,0,100);
		rect(myA, myB, 20,20);
	}
}
class JumboParticle extends NormalParticle//uses inheritance
{
	//your code here
	JumboParticle()
	{
		mySize=40;
	}

}

