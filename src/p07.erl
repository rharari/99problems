%%%-------------------------------------------------------------------
%%% @author ricardo.harari@gmail.com
%%% @copyright MIT
%%% @doc
%%% P07. Flatten a nested list structure.
%%% @end
%%%-------------------------------------------------------------------
-module(p07).

%% API
-export([sol1/1, sol2/1]).

sol1(A) -> lists:flatten(A).

sol2(A) -> sol2b(A, []).
sol2b([], Acc) -> Acc;
sol2b([H|T], Acc) ->
  case is_list(H) of
    true -> sol2b(T, sol2b(H, Acc));
    false -> sol2b(T, Acc ++ [H])
  end.
