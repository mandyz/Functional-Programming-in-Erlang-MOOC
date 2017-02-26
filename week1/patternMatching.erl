-module(patternMatching).
-export([xOr_1/2,xOr_2/2,xOr_3/2,xOr_4/2,xOr_5/2,maxThree/3,howManyEqual/3]).


xOr_1(true,true) ->
  false;
xOr_1(X,Y) ->
  X or Y.


xOr_2(false,false) ->
  false;
xOr_2(X,Y) ->
  not (X and Y).


xOr_3(X,Y) ->
  not (X == Y).


xOr_4(X,Y) ->
  X =/= Y.


xOr_5(true,X) ->
  not X;
xOr_5(false,X) ->
  X.


maxThree(X,Y,Z) ->
  max(max(X,Y),Z).


howManyEqual(X,X,X) ->
  3;
howManyEqual(X,_,X) ->
  2;
howManyEqual(X,X,_) ->
  2;
howManyEqual(_,X,X) ->
  2;
howManyEqual(_,_,_) ->
  0.
