class Spaceship extends Floater {
  Spaceship() {
corners = 10;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 25; 
    yCorners[0] = 0;  
    xCorners[1] = 10; 
    yCorners[1] = 12; 
    xCorners[2] = -15; 
    yCorners[2] = 20; 
    xCorners[3] = -30; 
    yCorners[3] = 8;  
    xCorners[4] = -10; 
    yCorners[4] = 4; 
    xCorners[5] = -10; 
    yCorners[5] = -4; 
    xCorners[6] = -30; 
    yCorners[6] = -8;
    xCorners[7] = -15; 
    yCorners[7] = -20; 
    xCorners[8] = 10; 
    yCorners[8] = -12; 
    xCorners[9] = 25;
    yCorners[9] = 0;  
    myColor = color(255, 50, 50);
    myCenterX = width / 2;
    myCenterY = height / 2;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }

  public void hyperspace() {
    myCenterX = Math.random() * width;
    myCenterY = Math.random() * height;
    myPointDirection = Math.random() * 360;
    myXspeed = 0;
    myYspeed = 0;
  }




  public double getPointDirection() {
    return myPointDirection;
  }

  public double getCenterX() {
    return myCenterX;
  }

  public double getCenterY() {
    return myCenterY;
  }

  public double getXspeed() {
    return myXspeed;
  }

  public double getYspeed() {
    return myYspeed;
  }
  public void setPointDirection(double direction) {
    myPointDirection = direction;
  }

  public void setCenterX(double x) {
    myCenterX = x;
  }

  public void setCenterY(double y) {
    myCenterY = y;
  }

  public void setXspeed(double speed) {
    myXspeed = speed;
  }

  public void setYspeed(double speed) {
    myYspeed = speed;
  }
}
