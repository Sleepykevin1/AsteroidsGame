class Bullet {
  float x, y, speedX, speedY;
  float size = 4;

  Bullet(float startX, float startY, float direction) {
    x = startX;
    y = startY;
    speedX = 8 * cos(radians(direction));
    speedY = 8 * sin(radians(direction));
  }

  public void move() {
    x += speedX;
    y += speedY;
  }

  public boolean isOffScreen() {
    return x > width || x < 0 || y > height || y < 0;
  }

  public void show() {
    fill(255);
    noStroke();
    ellipse(x, y, size, size);
  }
}
