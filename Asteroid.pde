class Asteroid extends Floater {
  private final int size;
  private final double turnSpeed;

  Asteroid() {
    corners = 8;
    xCorners = new int[corners];
    yCorners = new int[corners];
    double angleStep = 2 * Math.PI / corners;

    size = (int) (Math.random()*20)+30;
    for (int i = 0; i < corners; i++) {
      double angle = i * angleStep;
      int radius = (int) (size + random(-5, 5));
      xCorners[i] = (int) (radius * Math.cos(angle));
      yCorners[i] = (int) (radius * Math.sin(angle));
    }

    myColor = color(255);
    myCenterX = random(width);
    myCenterY = random(height);
    myXspeed = random(-1, 1);
    myYspeed = random(-1, 1);
    turnSpeed = random(-2, 2);
  }

  public void move() {
    super.move();
    turn(turnSpeed);
  }

  public int getSize() {
    return size;
  }
}
