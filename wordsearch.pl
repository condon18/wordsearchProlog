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
      [1,1,a], [1,2,c], [1,3,g], [1,4,k], [1,5,h], [1,6,m], [1,7,c], [1,8,r], [1,9,u],
      [2,1,l], [2,2,n], [2,3,n], [2,4,x], [2,5,z], [2,6,a], [2,7,s],
      [3,1,i], [3,2,g], [3,3,l], [3,4,o], [3,5,o], [3,6,w], [3,7, u],
      [4,1,c], [4,2,v], [4,3,v], [4,4,y], [4,5,q], [4,6,n], [4,7,i],
      [5,1,e], [5,2,d], [5,3,g], [5,4,h], [5,5,o], [5,6,p], [5,7,e],
      [6,1,j], [6,2,b],
      [7,1,l], [7,2,b],
      [8,1,f], [8,2,i]
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
