void main()
{
  List <int> scores = [50, 70, 80, 90, 100];

  for (int i = 0; i < 5; i++)
  {
    print("hello kompadre $i");  
  }

  for (int score in scores.where((x) {return x > 50;}))
  {
    print(score);
  }

  
}