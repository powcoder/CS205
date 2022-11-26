https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Example 1
%
justAte(mosquito,blood(john)).
justAte(frog,mosquito).
justAte(stork,frog).

isDigesting(X,Y):- justAte(X,Y).
isDigesting(X,Y):- justAte(X,Z), isDigesting(Z,Y).

% ?- isDigesting(stork,mosquito).
% ?- isDigesting(mosquito,blood(john)).
% ?- isDigesting(mosquito,X).
% ?- isDigesting(frog,X).
% ?- isDigesting(stork,X).
% ?- isDigesting(X,mosquito).
% ?- isDigesting(X,blood(john)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Example 2
%
child(anna,bridget).
child(bridget,caroline).
child(caroline,donna).
child(donna,emily).


descend(X,Y):- child(X,Y).
descend(X,Y):- child(X,Z), descend(Z,Y).


% ?- descend(anna,anna).
% ?- descend(anna,bridget).
% ?- descend(anna,caroline).
% ?- descend(anna,X).
% ?- descend(X,donna).
% ?- descend(X,Y).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Example 3
%
loop(0).
loop(N):-N>0,write(N),nl,NewN is N-1,loop(NewN).

% ?- loop(2).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Example 4
%
myBetween(X,Y,X):- X=<Y.
myBetween(X,Y,Z):- X<Y, NewX is X+1, myBetween(NewX,Y,Z).

% ?- myBetween(10,15,7).
% ?- myBetween(10,15,12).
% ?- myBetween(10,15,X).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Example 5: To be completed in labs.

numeral(0).
numeral(succ(X))  :-  numeral(X).


%?- numeral(succ(succ(succ(0)))).    

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Example 6: To be completed in labs.

directTrain(saarbruecken,dudweiler). 
directTrain(forbach,saarbruecken). 
directTrain(freyming,forbach). 
directTrain(stAvold,freyming). 
directTrain(fahlquemont,stAvold). 
directTrain(metz,fahlquemont). 
directTrain(nancy,metz). 
