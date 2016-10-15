%%%-------------------------------------------------------------------
%%% @author ricardo.harari@gmail.com
%%% @copyright MIT
%%% @doc
%%% P09. Pack consecutive duplicates of list elements into sublists.
%%% @end
%%%-------------------------------------------------------------------
-module(p09).

%% API
-export([sol1/1]).

sol1(A) -> [H|T] = A, sol1B(H, T, [H], []).

sol1B(_, [], Acc, R) -> R ++ [Acc];
sol1B(H, [I|T], Acc, R) when I == H -> sol1B(H, T, Acc ++ [H], R);
sol1B(_, [I|T], Acc, R) -> sol1B(I, T, [I], R ++ [Acc]).