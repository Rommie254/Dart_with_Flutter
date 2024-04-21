import "dart:io";

// 1. Function to initialize a 3x3 (2D) game board --using for loop to create 3 empty rows
List createBoard() {
  List board = [];
  for (int i = 0; i < 3; i++) {
    List row = [];
    for (int j = 0; j < 3; j++) {
      row.add(" ");
    }
    board.add(row);
  }
  return board;
}

// 2. Function to display the board
void displayBoard(List board) {
  print("   0   1   2 \n");
  for (int i = 0; i < 3; i++) {
    print("$i  ${board[i][0]} | ${board[i][1]} | ${board[i][2]} ");
    if (i < 2) {
      print("  ---+---+---");
    }
  }
}

// 3. Function to check if a move is valid (checks if the row and column indices are valid and if the selected location on the board is empty)
bool isValidMove(List board, int row, int column) {
  return row >= 0 &&
      row < 3 &&
      column >= 0 &&
      column < 3 &&
      board[row][column] == " ";
}

// 4. Function to make a move
void makeMove(List board, String player, int row, int column) {
  if (isValidMove(board, row, column)) {
    board[row][column] = player; //place player's mark
  } else {
    throw Exception("Invalid move! Play again.\n");
  }
}

// 5. Function to switch players
String switchPlayer(String currentPlayer) {
  if (currentPlayer == "X") {
    return "O";
  } else {
    return "X";
  }
}

// 6. Function to check if a player has won
bool checkWin(List board, String player) {
  // check rows
  for (int i = 0; i < 3; i++) {
    if (board[i][0] == player &&
        board[i][1] == player &&
        board[i][2] == player) {
      return true;
    }
  }
  // check columns
  for (int i = 0; i < 3; i++) {
    if (board[0][i] == player &&
        board[1][i] == player &&
        board[2][i] == player) {
      return true;
    }
  }
  // check diagonals
  if ((board[0][0] == player &&
          board[1][1] == player &&
          board[2][2] == player) ||
      (board[0][2] == player &&
          board[1][1] == player &&
          board[2][0] == player)) {
    return true;
  }

  // no win conditions met
  return false;
}

// 7. Function to check if the game is a draw --true if all spaces are filled
bool checkDraw(List board) {
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      if (board[i][j] == " ") {
        return false;
      }
    }
  }
  return true;
}

// Main function
void main() {
  // Initialize the game board and start with player 'X'
  print(
      "\nThis is a CLI Tic Tac Toe game for 2 players: X & O. Remember there are 3 columns and 3 rows with indices 0, 1, 2. Enjoy!");
  List board = createBoard();
  String currentPlayer = "X";
  bool playing = true;

  while (playing) {
    print("\nCurrent player: $currentPlayer");
    displayBoard(board);

    try {
      // Get current player's input to make a move
      print("Make your move. Enter row and column separated by a space:");
      var input = stdin.readLineSync() ?? "";
      var parts = input.split(" ");
      if (parts.length != 2) {
        throw Exception(
            "Invalid Input! Enter both row & column separated by a space.");
      }

      int row = int.parse(parts[0]);
      int column = int.parse(parts[1]);

      // Make the move and check game state
      makeMove(board, currentPlayer, row, column);

      // Check for winner or draw, if there's a winner/draw print the result and end the game, else switch player and keep playing
      if (checkWin(board, currentPlayer)) {
        displayBoard(board);
        print("Game Over! Player $currentPlayer wins! \u{1F973} \u{1F38A} \n");
        playing = false;
      } else if (checkDraw(board)) {
        displayBoard(board);
        print("Game Over! It's a draw!\n");
        playing = false;
      } else {
        currentPlayer = switchPlayer(currentPlayer);
      }
    } catch (e) {
      print(e);
    }
  }
}
