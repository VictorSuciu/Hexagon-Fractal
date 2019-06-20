int w;
int h;
int depthLimit = 6;
int fill = 0;
ArrayList<Hexagon> queue = new ArrayList<Hexagon>();
int qIndex = 0;
int centerShade = 245;
float shadeScaler = 2.5;
PGraphics image;

void setup() {
  size(100, 100);
  w = 3000;
  h = 3000;
  image = createGraphics(w, h);
  
  
  
  int size = w/6;
  queue.add(new Hexagon(size, 0, w/2, h/2, 245));
  drawDepth(1, size);
  
  println(queue.size());
  
  image.beginDraw();
  image.background(0);
  for(int i = queue.size() - 1; i >= 0; i--) {    
    queue.get(i).display();
  }
  image.endDraw();
  String name = "HexagonFractal" + depthLimit + ".png";
  image.save(name);
}

void drawDepth(int n, int size) {
  if(n <= depthLimit) {
    
    
    for(int i = 0; i < pow(6, n-1); i++) {
      for(int j = 0; j < 6; j++) {
        
        queue.add(new Hexagon(size/2, 0, queue.get(qIndex).getCenterX() + ((size * 3.0/2.0) * cos((j%6)*(PI/3.0))), 
                               queue.get(qIndex).getCenterY() + ((size * 3.0/2.0) * sin((j%6)*(PI/3.0))), 
                               (int)(centerShade - n*n*shadeScaler)));
        
      }
      qIndex++;
    }
    drawDepth(n+1, size / 2);
  }
}

void draw() {
  
}
