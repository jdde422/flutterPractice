void main ()
{
  menuItem noodles = menuItem("noodles", 75.25);
  Pizza greenwich = Pizza(["pineapple", "spam"], "noodles", 75.25);
  print(noodles.format());
  print(greenwich.format());
}

class menuItem
{
  String? title;
  double? price;

  menuItem(this.title, this.price);

  String format()
  {
    return "title: ${this.title}, price: ${this.price}";
  }
}

class Pizza extends menuItem
{
  List<String> toppings;

  Pizza(this.toppings, super.title, super.price);

  @override
  String format()
  {
    return "title: ${this.title}, price: ${this.price}, toppings: ${this.toppings}";
  }
  
}