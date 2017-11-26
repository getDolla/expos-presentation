//globals
static int screenw = 900;
static int screenl = 600;

static int spacew = 20;
static int spacel = 24;

static int menu_bar_xpos = 762;
static int text_xpos = 820;

static int speed = 1;

static int block_color = 200;

//Block Dimens
int boxw = (menu_bar_xpos - (2 * spacew) - 20)/3;
int boxl = (screenl - (2 * spacel))/3;

//Block Grid Dimens
int grid_border = 3;
int gridw = (boxw - 4 * grid_border)/3;
int gridl = (boxl - 4 * grid_border)/3;

Tiles[] grid = new Tiles[81];

//User Buttons
Button product_release = new Button(menu_bar_xpos + 5, 300, 85, 30, 200, 130, 60, Button.GROWING);
Button speeddown = new Button(menu_bar_xpos + 5, 400, 25, 25, 0, 180, 180, Button.STATIC);
Button speedup = new Button(speeddown.x + 60, 400, 25, 25, 0, 180, 180, Button.STATIC);
 
void setup() 
{
  size(860, 600);
  background(255);
  frameRate(50);
  stroke(100);
  
  set_up_field();
  
  product_release.set_growth_rate( 100.0 );
}
 
void draw() 
{ 
  stroke(100);
  display_text();
  product_release.draw();
  speeddown.draw();
  speedup.draw();
  
  if (get(mouseX, mouseY) == color(block_color)) {
    for( int i = 0; i < grid.length; i++ ) {
      if (grid[i].is_under( mouseX, mouseY )) {
        grid[i].draw();
      }
      else {
        grid[i].clear(block_color);
      }
    }
  }
  
}

public void set_up_field() {
  
  int ctr = 0;
  
  for( int x = 10; x < menu_bar_xpos - 10; x += (boxw + spacew) ) { //row
    for( int y = 0; y < screenl; y += (boxl + spacel) ) { //col
      fill(block_color);
      rect(x, y, boxw, boxl);
      
      for( int a = x + grid_border; a < x + boxw - grid_border; a += (gridw + grid_border) ) {
        for( int b = y + grid_border; b < y + boxl - grid_border; b += (gridl + grid_border) ) {
          grid[ctr] = new Tiles( a, b, gridw, gridl );
          //grid[ctr].draw();
          ctr++;
        }
      }
      
    }
  }
  
}

public void display_text() {
  //sample
  fill(200, 255, 250);
  rect(762, 0, screenw - 760, screenl);
  
  fill(0);
  textSize(16);
  
  text( 500, text_xpos, 48);
  
  //money
  text( 600, text_xpos, 100);
  
}