Spaceship playerShip = new Spaceship();
Star[] galaxyStars = new Star[300];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid> ();
ArrayList <Bullet> bullets = new ArrayList <Bullet> ();

public void setup() {
  size(850, 850);
  for (int i = 0; i < galaxyStars.length; i++) galaxyStars[i] = new Star();
  for (int i = 0; i < 10; i++) asteroids.add(new Asteroid());
}

public void draw() {
  background(0);

  for (int i = 0; i < galaxyStars.length; i++) {
    galaxyStars[i].show();
  }

  playerShip.move();
  playerShip.show();

  for (int i = bullets.size() - 1; i >= 0; i--) {
    Bullet b = bullets.get(i);
    b.move();
    b.show();
    if (b.isOffScreen()) bullets.remove(i);
  }

  for (int i = asteroids.size() - 1; i >= 0; i--) {
    Asteroid a = asteroids.get(i);
    a.move();
    a.show();

    if (dist((float) playerShip.getCenterX(), (float) playerShip.getCenterY(), (float) a.myCenterX, (float) a.myCenterY) < 34) {
      playerShip.setXspeed(playerShip.getXspeed() * -0.5);
      playerShip.setYspeed(playerShip.getYspeed() * -0.5);
      asteroids.remove(i);
    } else {
      for (int j = bullets.size() - 1; j >= 0; j--) {
        Bullet b = bullets.get(j);
        if (dist(b.x, b.y, (float) a.myCenterX, (float) a.myCenterY) < 20) {
          bullets.remove(j);
          asteroids.remove(i);
          j = -1; 
        }
      }
    }
  }
noStroke();
fill(0, 150); 
rect(10, 10, 150, 100); 


fill(255);
textSize(16);
text("Ship Angle: " + (int) playerShip.getPointDirection(), 20, 30);
text("X Pos: " + (int) playerShip.getCenterX(), 20, 50);
text("Y Pos: " + (int) playerShip.getCenterY(), 20, 70);
text("X Velocity: " + (int) playerShip.getXspeed(), 20, 90);
text("Y Velocity: " + (int) playerShip.getYspeed(), 20, 110);

}




public void mousePressed() {
float d = playerShip.getPointDirection();
println("Ship Direction: " + d); 
float x = playerShip.getCenterX();
 float y = playerShip.getCenterY(); 
bullets.add(new Bullet(x, y, d - 5)); 
bullets.add(new Bullet(x, y, d)); 
bullets.add(new Bullet(x, y, d + 5));
println("Bullet created at:", x, y, "Direction:", direction);
}

public void keyPressed() {
  if (key == 'd') playerShip.turn(13);
  if (key == 'a') playerShip.turn(-13);
  if (key == 'w') playerShip.accelerate(0.5);
  if (key == 's') playerShip.accelerate(-0.5);
  if (key == 'h') {
    playerShip.setXspeed(0);
    playerShip.setYspeed(0);
    playerShip.setCenterX(Math.random() * width);
    playerShip.setCenterY(Math.random() * height);
    playerShip.setPointDirection(Math.random() * 360);
  }
}
