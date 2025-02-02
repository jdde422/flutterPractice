void main ()
{
  menuItem noodles = menuItem("noodles", 75.25);
  Pizza greenwich = Pizza(["pineapple", "spam"], "pizzas", 75.25);
  print(noodles.format());
  print(greenwich.format());

  var foods = Collection<menuItem>('Menu items', [noodles, greenwich]);

  var random = foods.randomItem();
  print(random);
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

  @override
  String toString()
  {
    return format();
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

class Collection<T>
{
  String name;
  List<T> data;

  Collection(this.name, this.data);

  T randomItem()
  {
    data.shuffle();
    return data[0];
  }
}