%%%-------------------------------------------------------------------
%%% @author ricardo.harari@gmail.com
%%% @copyright MIT
%%% @doc
%%% P01. Find the last element of a list.
%%% @end
%%%-------------------------------------------------------------------
-module(p01).

%% API
-export([sol1/1, sol2/1, sol3/1, sol4/1, sol5/1, sol6/1]).

sol1(A) -> [H|_] = lists:reverse(A), H.

sol2(A) -> lists:nth(length(A), A).

sol3([H|[]]) -> H;
sol3([_|T]) -> sol3(T).

sol4(A) -> lists:last(A).

sol5([H|T]) -> case length(T) == 0 of
                 true -> H;
                 false -> sol5(T)
               end.

sol6(A) -> [H] = lists:nthtail(length(A) -1, A), H.