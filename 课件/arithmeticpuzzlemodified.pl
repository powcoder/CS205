https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
fact.
fact4(test).
    
% Solving arithmetic.

    % solving the puzzle: the numbers 1-9 should occur once
    % in the following puzzle.

fact3.
    
%********************************************************************
%    
%         X1 x 4 - X2 = 3
%         x   x    +
%        X3 + X4 x X5 = 19
%         x   -    +
%        7 - X6 +  9  = 8
%        =    =    =
%       14   16    17
%
%**********************************************************************

fact2.

% general idea: generate first a list of all possible solutions, and then add
% the contraints to reduce it to the (normally) one  solution.

% we need a few predicates first:

% 1) two days ago we learned about the member predicate.

% here member with remainder

member_rem(X,[X|Xs],Xs).
member_rem(X,[Y|Ys],[Y|R]) :-
        member_rem(X,Ys,R).

% 2) generate list of N elements from set S, where |S| >= N.

gen_list(0,_,[]).   % assuming proper list provided.

%gen_list(N,S,[X|Xs]) :- to be completed.


% 3) poss solution of arithmetic puzzle.

poss_soln(L):-
        gen_list(6,[1,2,3,5,6,8],L).


% 4) add constraints

solve([X1,X2,X3,X4,X5,X6]) :-
        poss_soln([X1,X2,X3,X4,X5,X6]),
        X1*4-X2=:= 3,
        X3 + X4 * X5 =:= 19,
        7 - X6 +9 =:=8,
        X1*X3*7 =:=14,
        4*X4-X6 =:= 16,
        X2 + X5 + 9 =:= 17.

 
