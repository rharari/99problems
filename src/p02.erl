%%%-------------------------------------------------------------------
%%% @author ricardo.harari@gmail.com
%%% @copyright MIT
%%% @doc
%%% P02. Find the last but one element of a list.
%%% @end
%%%-------------------------------------------------------------------
-module(p02).

%% API
-export([sol1/1, sol2/1, sol3/1, sol4/1, sol5/1]).

sol1(A) -> [_,H|_] = lists:reverse(A), H.

sol2(A) -> lists:nth(length(A) - 1, A).

sol3([H|T]) -> case length(T) == 1 of
                 true -> H;
                 false -> sol5(T)
               end.

sol4(A) -> [H, _] = lists:nthtail(length(A) -2, A), H.

sol5([H|T]) when length(T) == 1 -> H;
sol5([_|T]) -> sol5(T).