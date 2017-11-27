class Building {
  PImage img = loadImage("shop.png");
  Company cmp;
  
  Building( Company c ) {
    cmp = c;
  }
  
  Building( String n, int money, int inv, int sale ) {
    cmp = new Company( n, money, inv, sale );
  }
  
  void show_stats() {
  }

}