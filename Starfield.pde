//your code here
Particle[] stars;
void setup()
{
	//your code here
	strokeWeight(1);
	size(500,500);
	background(0);
	stars = new Particle[1000];
	for(int i = 0; i < stars.length; i ++)
	{
		stars[i] = new NormalParticle();
		stars[0] = new OddballParticle();
		stars[1] = new JumboParticle();
	}
}
void draw()
{
	//your code here
	for(int i = 0; i < stars.length; i ++)
	{
		stars[i].move();
		stars[i].show();
	}
}
void mousePressed()
{
	for(int i = 0; i < stars.length; i ++)
	{
		stars[i] = new NormalParticle();
	}
}
class NormalParticle implements Particle
{
	//your code here
	double dX, dY, dColor, dTheta, dSpeed;
	NormalParticle()
	{
		dX = 250;
		dY = 250;
		dColor = 255;
		dTheta = Math.random()*2*Math.PI; 
		dSpeed = (Math.random()*9 + 1);
	}
	void move()
	{
		dX = dX + Math.cos(dTheta)*dSpeed;
		dY = dY + Math.sin(dTheta)*dSpeed;
	}
	void show()
	{
		ellipse((float)dX, (float)dY, 5, 5);
	}
}
interface Particle
{
	//your code here
	public void show();
	public void move();
}
class OddballParticle implements Particle //uses an interface
{
	//your code here
	double aX, aY; int aColor;
	OddballParticle()
	{
		aX = 250;
		aY = 250;
		aColor = (int)(Math.random()*256);
	}
	void move()
	{
		aX = aX;
		aY = aY;
	}
	void show()
	{
		fill(aColor);
        ellipse((float)aX, (float)aY, 5, 5);
	}
}
class JumboParticle extends NormalParticle//uses inheritance
{
	//your code here
	void show()
	{
		ellipse((float)dX, (float)dY, 7, 7);
	}
}