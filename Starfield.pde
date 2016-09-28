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
		myX = myX + Math.sin(angle)*speed;
		myY = myY + Math.cos(angle)*speed;
	}
	void show()
	{	fill((float)myColor*(float)(myX-myY),(float)myColor*(float)(angle),(float)myColor*(float)(speed));
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
}
class JumboParticle //uses inheritance
{
	//your code here
}

