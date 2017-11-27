class Company {
  String name;
  
  float product_release_boost;
  float chance_money_gain;
  float time_till_release;
  
  int net_worth;  
  int inventors;
  int salespeople;
  
  Company( String n, int money, int inv, int sale ) {
    name = n;
    net_worth = money;
    inventors = inv;
    salespeople = sale;
  }
  
  

}