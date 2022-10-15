import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/utils/game_logic.dart';
import 'package:tictactoe/ui/theme/color.dart';
import 'package:tictactoe/model/cell.dart';

class Cell extends StatelessWidget {
  final CellModel data;

  const Cell(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: InkWell(
      child: Container(
        width: Game.blocSize,
        height: Game.blocSize,
        decoration: BoxDecoration(
          color: MainColor.secondaryColor,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Center(
          child: Text(
            data.value,
            style: TextStyle(
              color: data.value == "X" ? Colors.blue : Colors.pink,
              fontSize: 64.0,
            ),
          ),
        ),
      ),
    ));
  }
}
