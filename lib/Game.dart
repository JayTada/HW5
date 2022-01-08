import 'dart:math';

class Game {
  List<int> myList = [];
  var maxRandom;
  int? _answer;

  int Count = 0;
  int count1=0;
  var maxrandoms;
  Game(var maxRd) {
    maxRandom=maxRd;
    var r = Random();
    maxrandoms =int.tryParse(maxRandom!);
    _answer = r.nextInt(maxrandoms!) + 1;
  }

  int doGuess(int num) {
    if (num > _answer!) {
      Count++;
      count1=Count;
      return 1;

    } else if (num < _answer!) {
      Count++;
      count1=Count;
      return -1;
    } else {
      Count++;
      count1=Count;
      var r = Random();
      _answer = r.nextInt(maxrandoms!) + 1;
      Count=0;
      myList.add(Count);
      return 0;
    }
  }
}