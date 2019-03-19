## 3 classes

- one for player
  - requests input for player names creates 2 players, assigns player lives, stores 2 players names in initialize, method for player losing life
- one for Game
  - controls game flow, holds player turns, outputs player names, outputs players score at end of every turn, game loop for each players turn, output game over at the end of every turn
- one for questions
  - generate random question every turn, output question

### Player class

- 2 players that take turns, one at a time
- players start with 3 lives
- lose a life if they mis-answer a question

### Game class

- The player that was prompted answers a question correctly or lose a life
- at the end of every turn the the game should output the new scores
- game doesn't end until player has lost all lives
- display game over once game is over, anounce winner and show other players score

### Questions class

- new question is generated on every turn
- outputs questions
- solve simple math addition problems
- picks two random numbers to generate between 1 - 20
