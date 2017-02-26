-module(fibonacci).
-export([fib/1,fibTL/1]).

fibVal(1) ->
  0;
fibVal(2) ->
  1;
fibVal(N) ->
  fibVal(N-2) + fibVal(N-1).

fib(0) ->
  [];
fib(N) when N >= 1 ->
  fib(N-1) ++ [fibVal(N)].

% Tail recursive implementation of fibonacci.
fibValTL(2,X,Y) ->
  X+Y;
fibValTL(N, X, Y) when x >= 2->
  fibValTL(N-1, Y, X+Y).

fibTL(0) ->
  [0];
fibTL(1) ->
  [0,1];
fibTL(N) ->
  fibTL(N-1) ++ [fibValTL(N, 0, 1)].
