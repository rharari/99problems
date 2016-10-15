%%%-------------------------------------------------------------------
%%% @author ricardo.harari@gmail.com
%%% @copyright MIT
%%% @doc
%%% P06. Find out whether a list is a palindrome.
%%% @end
%%%-------------------------------------------------------------------
-module(p06).

%% API
-export([sol1/1, sol2/1]).

sol1(A) -> A == lists:reverse(A).

sol2(A) -> {A1, A2} = lists:split(length(A) div 2, A),
           check2(A1, lists:reverse(A2)).
check2([], _) -> true;
check2(_, []) -> true;
check2([H1|_], [H2|_]) when H1 =/= H2 -> false;
check2([_|T1], [_|T2]) -> check2(T1, T2).


