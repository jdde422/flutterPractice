void main ()
{
    // for (var i = 0; i < 5; i++)
    // {
    //     print(i);
    // }
   
  //  var foo;
  //  int? bar;
  //  print(foo);
  //  print(bar);

  print(greet(age: 21));
}

String greet({String? name, required int age})
{
  return "hi! my name is $name and i am $age years old";
}
