import 'package:flutter/material.dart';
//import '../model/game.dart';

class GameBrain extends ChangeNotifier {
  // 0 -> Empty Space
  // 1 -> Cross
  // 2 -> Circle

  int x = 0;
  int o = 0;
  int rounds = 0;
  String player = 'X';
  String vencedor = '';
  List<List<String>> board = [
    ['', '', ''],
    ['', '', ''],
    ['', '', '']
  ];

  clearBoard() {
    board = [
      ['', '', ''],
      ['', '', ''],
      ['', '', '']
    ];
  }

  setVencedor(String vencedor) {
    if (vencedor != '') {
      vencedor == 'X' ? x++ : o++;
    }
  }

  void changeValue(int x, int y) {
    rounds++;
    board[x][y] = player;
    checkendgame();
  }

  void changePlayer() {
    /// Use it to chenge from one player to the other
    player == 'X' ? 'O' : 'X';
  }

  void setFinished(String vencedor) {
    this.vencedor = vencedor;
    setVencedor(vencedor);
    clearBoard();
  }

  void checkendgame() {
    /// Check the values on the game to see if someone wins the game
    if ((board[0][0] == board[1][1] && board[1][1] == board[2][2])) {
      setFinished(board[1][1]);
      return;
    }
    if (board[0][2] == board[1][1] && board[1][1] == board[2][0]) {
      setFinished(board[1][1]);
      return;
    }
    for (int i = 0; i < 3; i++) {
      if (board[i][0] == board[i][1] && board[i][1] == board[i][2]) {
        //Row
        setFinished(board[i][1]);
        return;
      } else if (board[0][i] == board[1][i] && board[1][i] == board[2][i]) {
        //Columns
        setFinished(board[1][i]);
        return;
      }
    }
    if (rounds == 8) {
      //Draw
      setFinished('');
      return;
    }
  }

  void endgame() {}
}
