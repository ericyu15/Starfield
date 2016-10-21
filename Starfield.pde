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
		if(i%50==0)
			{stars[i] = new JumboParticle();}
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
		stars[0] = new OddballParticle();
		if(i%50==0)
			{stars[i] = new JumboParticle();}
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
		dColor = (int)(Math.random()*256);
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
		fill((float)(Math.random()*256),(float)(Math.random()*256),(float)(Math.random()*256));
		ellipse((float)dX, (float)dY, 5, 5);
	}
}
interface Particle
{
	//your code here
	public void show();
	public void move();
}
class OddballParticle implements Particle//uses an interface
{
	//your code here
	double dX, dY, aColor;
	OddballParticle()
	{
		dX = 250;
		dY = 250;
	    aColor = (Math.random()*256);
	}
	public void show()
	{
		//fill(Math.random()*256);
        rect((float)dX, (float)dY, 10, 10);
	}
	public void move()
	{
		dX = dX + 0;
		dY = dY + 0;
	}
}
class JumboParticle extends NormalParticle//uses inheritance
{
	//your code here
	void show()
	{
		ellipse((float)dX, (float)dY, 20, 20);
	}
}