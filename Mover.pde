class Mover {

  PVector location;

  Mover(float x , float y) {
    location = new PVector(x,y);
  
  }
  
      
  void update() {
    location.y+=10;//加速度
  }

  void display() {//画出形状
    //colorMode(HSB);
    noStroke();
    strokeWeight(2);
    fill(random(255),random(255),random(255));
    //ellipse(location.x,location.y,6,8);
	triangle(location.x+45, location.y-25, location.x+58, location.y, location.x+71, location.y-25);
  }

  void checkEdges() {//触地

    if (location.y > height) {
      location.y = -1;
	  location.x+=(random(-50,50));
    }

  }

}