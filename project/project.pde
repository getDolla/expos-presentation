//globals
static int screenw = 900;
static int screenl = 600;

static int spacel = 24;
static int spacew = 20;

static int menu_bar_xpos = 762;
static int text_xpos = 820;
 
void setup() 
{
  size(860, 600);
  background(255);
}
 
void draw() 
{  
  display_field();
  display_text();
  //// assume  cursor is not over the item
  //fill(153);
 
  //// Test if the cursor is over the item
  //if (mouseX > itemX-itemSize && mouseX < itemX+itemSize && 
  //  mouseY > itemY-itemSize && mouseY < itemY+itemSize) {
  //  // cursor is over the item
  //  fill(255, 0, 0);
  //  itemSize -= 1;    // shrink
  //  // if too small  
  //  if (itemSize<=5) {
  //    drawBox=!drawBox;  // toggle item 
  //    itemSize = 75;     // full scale 
  //    itemX = random(100, width-itemSize);    // random pos
  //    itemY = random(100, height-itemSize);
  //  } // if
  //} // if  
 
  //// draw 
  //if (drawBox) {
  //  // Draw the box
  //  rect(itemX, itemY, itemSize, itemSize);
  //}
  //else {
  //  // circle 
  //  ellipse(itemX, itemY, itemSize, itemSize);
  //} // else
}

public void display_field() {
  int boxw = (menu_bar_xpos - (2 * spacew) - 20)/3;
  int boxl = (screenl - (2 * spacel))/3;
  
  for( int x = 10; x < menu_bar_xpos - 10; x += (boxw + spacew) ) { //row
    for( int y = 0; y < screenl; y += (boxl + spacel) ) { //col
      fill(200);
      rect(x, y, boxw, boxl);
    }
  }
  
}

public void display_text() {
  //sample
  fill(200, 255, 250);
  rect(762, 0, screenw - 760, screenl);
  noFill();
  
  fill(0);
  
  textSize(16);
  text( 500, text_xpos, 48);
  
  //money
  text( 600, text_xpos, 100);
  
}