%%%-------------------------------------------------------------------
%%% @author ricardo.harari@gmail.com
%%% @copyright MIT
%%% @doc
%%% P05. Reverse a list.
%%% @end
%%%-------------------------------------------------------------------
-module(p05).

%% API
-export([sol1/1, sol2/1]).

sol1(A) -> lists:reverse(A).

sol2(A) -> sol2b([], A).
sol2b(Acc, []) -> Acc;
sol2b(Acc, [H|T]) -> sol5b([H] ++ Acc, T).
