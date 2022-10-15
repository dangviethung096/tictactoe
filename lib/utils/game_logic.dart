import './player.dart';

class Game {
  static final boardLength = 9;
  static final blocSize = 100.0;

  List<String>? board;
  List<int> scoreboard = [0, 0, 0, 0, 0, 0, 0, 0];

  initGameBoard() {
    board = List.generate(boardLength, (index) => Player.empty);
    scoreboard = List.generate(8, (index) => 0);
  }

  bool winnerCheck(String player, int index, int gridSize) {
    int row = index ~/ 3;
    int col = index % 3;
    int score = player == "X" ? 1 : -1;

    scoreboard[row] += score;
    scoreboard[gridSize + col] += score;
    if (row == col) {
      scoreboard[2 * gridSize] += score;
    }
    if (gridSize - 1 - col == row) {
      scoreboard[2 * gridSize + 1] += score;
    }

    if (scoreboard.contains(3) || scoreboard.contains(-3)) {
      return true;
    }

    return false;
  }
}
