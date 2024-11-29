Spaceship playerShip = new Spaceship();
Star[] galaxyStars = new Star[300];

public void setup() {
  size(850, 850);
  background(0);
  for (int i = 0; i < galaxyStars.length; i++) {
    galaxyStars[i] = new Star();
  }
}

public void draw() {
  background(0);
  for (int i = 0; i < galaxyStars.length; i++) {
    galaxyStars[i].show();
  }
  playerShip.move();
  playerShip.show();
  fill(255);
  textSize(16);
  text("Ship Angle: " + (int) playerShip.getPointDirection(), 20, 30);
  text("X Pos: " + (int) playerShip.getCenterX(), 20, 50);
  text("Y Pos: " + (int) playerShip.getCenterY(), 20, 70);
  text("X Velocity: " + (int) playerShip.getXspeed(), 20, 90);
  text("Y Velocity: " + (int) playerShip.getYspeed(), 20, 110);
}

public void keyPressed() {
  if (key == 'd') {
    playerShip.turn(13);
  }
  if (key == 'a') {
    playerShip.turn(-13);
  }
  if (key == 'w') {
    playerShip.accelerate(0.5);
  }
  if (key == 's') {
    playerShip.accelerate(-0.5);
  }
  if (key == 'h') {
    playerShip.setXspeed(0);
    playerShip.setYspeed(0);
    playerShip.setCenterX(Math.random() * width);
    playerShip.setCenterY(Math.random() * height);
    playerShip.setPointDirection(Math.random() * 360);
  }
}
