//your code here
NormalParticle[] stars;
void setup()
{
	//your code here
	size(300,300);
	background(0);
	stars = new NormalParticle[1000];
	for(int i = 0; i < stars.length; i ++)
	{
		stars[i] = new NormalParticle();
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
class NormalParticle
{
	//your code here
	double dX, dY, dColor, dTheta, dSpeed;
	NormalParticle()
	{
		dX = 150;
		dY = 150;
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
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

