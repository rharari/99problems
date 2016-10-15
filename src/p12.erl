%%%-------------------------------------------------------------------
%%% @author ricardo.harari@gmail.com
%%% @copyright MIT
%%% @doc
%%% P12. Decode a run-length encoded list.
%%% @end
%%%-------------------------------------------------------------------
-module(p12).

%% API
-export([sol1/1]).

sol1(A) -> flat(A, []).
flat([], Acc) -> Acc;
flat([[N, L]|T], Acc) -> flat(T, Acc ++ [ L || _ <- lists:seq(1, N)]);
flat([L|T], Acc) -> flat(T, Acc ++ [L]).
