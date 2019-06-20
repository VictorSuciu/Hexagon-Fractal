public class Hexagon {
  
  private int size, shade;
  private float rad, centerX, centerY;
  private final int gap = 3;
  public Hexagon(int size, int deg, float centerX, float centerY, int shade) {
    this.size = size;
    this.rad = deg * (PI / 180);
    this.centerX = centerX;
    this.centerY = centerY;
    this.shade = shade;
  }
  
  public float getCenterX() {
    return centerX;
  }
  public float getCenterY() {
    return centerY;
  }
  
  public void display() {
    image.fill(shade);
    image.stroke(0);
    image.strokeWeight(gap);
    //image.noStroke();
    //image.ellipse(centerX, centerY, size, size);
    image.beginShape();
      for(int i = 0; i < 7; i++) {
        image.vertex(centerX + ((size) * cos((i%6)*(PI/3)+rad)), 
                     centerY + ((size) * sin((i%6)*(PI/3)+rad)));
      }
    image.endShape();
  }
}
