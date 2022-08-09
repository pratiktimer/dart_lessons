import 'dart:io';
import 'dart:math';

// rock, paper and scissor
enum Move { rock, paper, scissors, nomove }

void main() {
  while (true) {
    stdout.write('Rock, Paper or scissors? (r/p/s)');
    String? userInput = stdin.readLineSync();

    // Validate Input
    if (userInput != null && userInput.isNotEmpty) {
      if (userInput == 'q') break;
      if (isValidInput(userInput)) {
        gameLogic(userInput);
      } else {
        stdout.writeln('Invalid Input ! Please try again :(');
      }
    } else {
      stdout.writeln('Invalid Input ! Please try again :(');
    }
  }
}

void gameLogic(String userInput) {
  var yourMove = Move.nomove;
  if (userInput == 'r') {
    yourMove = Move.rock;
  } else if (userInput == 'p') {
    yourMove = Move.paper;
  } else if (userInput == 's') {
    yourMove = Move.scissors;
  }
  stdout.writeln('Your Move $yourMove');

  Random rand = Random();
  Move aiMove = Move.values[rand.nextInt(2)];
  stdout.writeln('AI Move $aiMove');
  if (yourMove == aiMove) {
    stdout.writeln('It\'s draw');
  } else if (yourMove.index > aiMove.index) {
    stdout.writeln('You win');
  } else {
    stdout.writeln('you loose');
  }
}

bool isValidInput(String? userInput) {
  if (userInput == 'r' || userInput == 'p' || userInput == 's') {
    return true;
  }
  return false;
}
