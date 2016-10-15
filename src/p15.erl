%%%-------------------------------------------------------------------
%%% @author ricardo.harari@gmail.com
%%% @copyright MIT
%%% @doc
%%% P15. Duplicate the elements of a list a given number of times.
%%% @end
%%%-------------------------------------------------------------------
-module(p15).

%% API
-export([sol1/2]).

sol1(A, N) -> [X || X<-A, _<-lists:seq(1, N)].
