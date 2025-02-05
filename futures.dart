void main ()
{
  fetchPost().then((p) 
  {
    print(p);
  });
  print("kaboom");
}

Future<String> fetchPost()
{
  const delay = Duration(seconds: 3);

  return Future.delayed(delay, ()
  {
    return "hello";
  });
}

String foo()
{
  return "hello";
}