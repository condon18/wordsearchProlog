% Danh Nguyen, Ryan Dehart, Teresa Condon
% Program 4
% Word Search

% Program description: Solves word search puzzle.

% http://forum.devmaster.net/t/find-words-puzzle-game-in-prolog/18366/3

% ---------- FACTS ----------
% Set the hidden words in the puzzle
hiddenWord([java, alice, hope, kettle, igloo]).

% Create an unsolved word search board
board([
      [1,1,'A'], [1,2,'C'], [1,3,'G'], [1,4,'K'], [1,5,'H'], [1,6,'M'], [1,7,'C'], [1,8,'R'], [1,9,'U'],
      [2,1,'L'], [2,2,'N'], [2,3,'N'], [2,4,'X'], [2,5,'Z'], [2,6,'A'], [2,7,'S'],
      [3,1,'I'], [3,2,'G'], [3,3,'L'], [3,4,'O'], [3,5,'O'], [3,6,'W'], [3,7, 'U'],
      [4,1,'C'], [4,2,'V'], [4,3,'V'], [4,4,'Y'], [4,5,'Q'], [4,6,'N'], [4,7,'I'],
      [5,1,'E'], [5,2,'D'], [5,3,'G'], [5,4,'H'], [5,5,'O'], [5,6,'P'], [5,7,'E'],
      [6,1,'J'], [6,2,'B'],
      [7,1,'L'], [7,2,'B'],
      [8,1,'F'], [8,2,'I']
]).

% ---------- PREDICATES (TESTING) ----------
is_hiddenWord(X) :- hiddenWord(X),
  write('This is a hidden word!').


% ---------- RULES ----------

% a char is correct if it is a char of a hiddenWord
correct(X) :-
  hiddenWord(X).



% ---------- MAIN ----------
% a dummy 'main' goal for debugging in atom/script
main :-
  solve.

solve :-
  write('Hello Churl, here is your puzzle.'),
  write('A C G K H M C R U
         L N N X Z A S
         I G L O O W U
         C V V Y Q N I
         E D
         J B
         L B
         F I
      '),
  nl.
  %functions here

% Queries
% shareLetter(X, hug),
% shareLetter(X, charlie).
%
% X = H
