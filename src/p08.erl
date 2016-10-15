%%%-------------------------------------------------------------------
%%% @author ricardo.harari@gmail.com
%%% @copyright MIT
%%% @doc
%%% P08. Eliminate consecutive duplicates of list elements.
%%% @end
%%%-------------------------------------------------------------------
-module(p08).

%% API
-export([sol1/1]).

sol1(A) -> [H|T] = A, sol1B(H, T, [H]).

sol1B(_, [], Acc) -> Acc;
sol1B(H, [I|T], Acc) when I == H -> sol1B(H, T, Acc);
sol1B(H, [I|T], Acc) -> sol1B(I, T, Acc ++ [I]).
