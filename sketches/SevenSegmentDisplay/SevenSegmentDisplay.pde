Segment[] segments;
int[] hex = {0x7E, 0x30, 0x6D, 0x79, 0x33, 0x5B, 0x5F, 0x70, 0x7F, 0x7B, 0x77, 0x1F, 0x4E, 0x3D, 0x4F, 0x47};

void setup() {
  size(640, 800);

  segments = new Segment[7];
  segments[0] = new Segment(width/2, height/5, width/10, height/4, HALF_PI, false);
  segments[1] = new Segment(width/2+height/7, height*7/20, width/10, height/4, 0, false);
  segments[2] = new Segment(width/2+height/7, height*13/20, width/10, height/4, 0, false);
  segments[3] = new Segment(width/2, height*4/5, width/10, height/4, HALF_PI, false);
  segments[4] = new Segment(width/2-height/7, height*13/20, width/10, height/4, 0, false);
  segments[5] = new Segment(width/2-height/7, height*7/20, width/10, height/4, 0, false);
  segments[6] = new Segment(width/2, height/2, width/10, height/4, HALF_PI, false);
}

void draw() {
  background(0);
  for (int i = 0; i < segments.length; i++)
    segments[i].display();

  setSegments(hex[round(frameCount/60%hex.length]);

  console.log(hex[round(frameCount/60%hex.length]);
}

void setSegments(int num) {
  String binaryString = binary(num, 7);

  for (int i = 0; i < binaryString.length(); i++)
    segments[i].setState(binaryString.charAt(i) == '1');
}
