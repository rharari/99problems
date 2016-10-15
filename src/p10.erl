%%%-------------------------------------------------------------------
%%% @author ricardo.harari@gmail.com
%%% @copyright MIT
%%% @doc
%%% P10. Run-length encoding of a list.
%%% @end
%%%-------------------------------------------------------------------
-module(p10).

%% API
-export([sol1/1]).

sol1(A) -> [H|T] = A, sol1B(H, T, 1, []).

sol1B(H, [], Acc, R) -> R ++ [[Acc, H]];
sol1B(H, [I|T], Acc, R) when I == H -> sol1B(H, T, Acc + 1, R);
sol1B(H, [I|T], Acc, R) -> sol1B(I, T, 1, R ++ [ [Acc, H] ]).