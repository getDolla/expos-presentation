class Button {
 final static int GROWING = 1;
 final static int STATIC = 0;
 
 int norm_r, norm_g, norm_b;
 
 //color used when button is growing/shrinking
 int grow_r = 180; 
 int grow_g = 180;
 int grow_b = 180;
 
 //rate of growth
 float growth_rate;
 
 //width of growth
 float grow_w = 0;
 
 int l, w;
 int x, y;
 int curr_state;
 
 Button(int coordx, int coordy, int wid, int len, int r, int g, int b, int state) {
  x = coordx;
  y = coordy;
  
  l = len;
  w = wid;
  
  norm_r = r;
  norm_g = g;
  norm_b = b;
  
  curr_state = state; 
 }
 
 float set_growth_rate( float var ) {
   growth_rate = 0.4 * (log(var/140.0 + 1)) * project.speed;
   //println(growth_rate);
   return growth_rate;
 }
 
 boolean is_under(int X, int Y) {
    return (X >= x && X <= x+w && Y >= y && Y < y+l);
  }
  
  void change_state() {
    if ( curr_state == STATIC ) {
       curr_state = GROWING;
    }
  }
  
 void draw() {
   
    if (curr_state == STATIC) {
      fill(norm_r, norm_g, norm_b);
      rect(x, y, w, l, 7);
    }
    
    else if (curr_state == GROWING) {
      fill(grow_r, grow_g, grow_b);
      rect(x, y, round(grow_w), l, 7);
      
      grow_w += growth_rate;
      //println(grow_w);
      
      if (grow_w >= w) {
        curr_state = STATIC;
        grow_w = 0;
      }
      
    }
 }
 
 } 