-module(tailRecursion).
-export([sumList/1,maxList/1]).


sumList(X) ->
  sumList(X, 0).

sumList([], P) ->
  P;
sumList([A|B], P) ->
  sumList(B, P+A).


% Max of List of positive integers.
maxList(X) ->
  maxList(X, 0).

maxList([], P) ->
  P;
maxList([A|B], P) ->
  maxList(B, max(A,P)).
