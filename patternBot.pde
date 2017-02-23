float r, g, b, n, factor, divider;
float noiseVal = 0;
float inc = 0.01;
void setup() {
  size(400, 400);
  colorMode(HSB);
  int BGCol = floor(random(0,3));
  int pxl = floor(random(2, 7));
  factor = floor(random(0, 1000));
  divider = floor(random(0, 1000));
  for (int y = 0; y<height; y+=pxl) {
    for (int x = 0; x<width; x+=pxl) {
      n = noise(noiseVal);
      float newX = x/divider;
      float newY = y*factor;
      float col =  n+sin(newX*newY*3.14159);
      
      if (col<0) {
        fill(255);
      } else {
        fill(BGCol*(255/3),255,255);
      }
      noStroke();
      rect(x, y, pxl, pxl);
      noiseVal+=inc;
    }
  }
  save("output.png");
 exit();
}