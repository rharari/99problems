%%%-------------------------------------------------------------------
%%% @author ricardo.harari@gmail.com
%%% @copyright MIT
%%% @doc
%%% P04. Find the number of elements of a list.
%%% @end
%%%-------------------------------------------------------------------
-module(p04).

%% API
-export([sol1/1, sol2/1, sol3/1, sol4/1, sol5/1]).

sol1(A) -> length(A).

sol2(A) -> lists:sum([1 || _ <- A]).

sol3(A) -> sol3B(A, 0).
sol3B([], Acc) -> Acc;
sol3B([_|T], Acc) -> sol3B(T, Acc + 1).

sol4(A) -> lists:foldl(fun(_, Sum) -> Sum + 1 end, 0, A).

sol5(A) -> lists:foldr(fun(_, Sum) -> Sum + 1 end, 0, A).