import 'package:tictactoe/utils/game_logic.dart';
import 'package:tictactoe/utils/player.dart';

class CellModel {
  String value;
  bool gameOver;
  Game game;

  CellModel(this.value, this.gameOver, this.game);
}
