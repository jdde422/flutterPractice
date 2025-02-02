void main ()
{
  
}

class Collection
{
  String name;
  List data;

  Collection(this.name, this.data);

  randomItem()
  {
    data.shuffle();
    return data[0];
  }
}