class Star {
  private float x, y;
  private float size;
  private int starColor;

  Star() {
    x = (float) (Math.random() * width);
    y = (float) (Math.random() * height);
    size = (float) (Math.random() * 3 + 1);
    starColor = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
  }

  public void show() {
    fill(starColor);
    noStroke();
    ellipse(x, y, size, size);
  }
}
