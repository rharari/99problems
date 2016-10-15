%%%-------------------------------------------------------------------
%%% @author ricardo.harari@gmail.com
%%% @copyright MIT
%%% @doc
%%% P03. Find the K'th element of a list.
%%% @end
%%%-------------------------------------------------------------------
-module(p03).

%% API
-export([sol1/2, sol2/2]).

sol1(A, K) -> lists:nth(K, A).

sol2(A, K) -> sol2b(A, K, 1).
sol2b([H|_], K, C) when C == K -> H;
sol2b([_|T], K, C) -> sol2b(T, K, C+1).


