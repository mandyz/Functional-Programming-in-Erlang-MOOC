-module(assignment).
-export([perimeter/1,area/1,enclose/1,bits/1,bitsTL/1]).


perimeter({circle, R}) ->
  2 * math:pi() * R;
perimeter({triangle, A, B, C}) ->
  A + B + C;
perimeter({rectangle, W, H}) ->
  (W + H) * 2.


area({circle, R}) ->
  math:pi() * first:square(R);
area({triangle, A, B, C}) ->
  first:area(A,B,C); % Using Heron's formual (defined alreay in module `first`).
area({rectangle, W, H}) ->
  W * H.


enclose({circle, R}) ->
  {square, R*2, R*2};
enclose(T = {triangle, A, _, _}) ->
  H = (area(T) * 2) / A,
  {rectangle, A, H};
enclose(R = {rectangle, _, _}) -> % Smallest enclosing rectangle of a rectangle is area of the same rectangle.
  R.


% Direct recursive defnition of bits function.
bits(0) ->
  0;
bits(N) when N > 0 ->
  bits(N div 2) + (N rem 2).

% Tail recursive defnition of bits function.
bitsTL(N) ->
  bitsValTL(N,0).

bitsValTL(0,B) ->
  B;
bitsValTL(N,B) when N > 0 ->
  bitsValTL(N div 2, B + (N rem 2)).
