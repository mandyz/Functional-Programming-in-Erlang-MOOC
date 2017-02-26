-module(fibonacci).
-export([fib/1]).

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
