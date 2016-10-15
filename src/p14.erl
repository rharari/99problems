%%%-------------------------------------------------------------------
%%% @author ricardo.harari@gmail.com
%%% @copyright MIT
%%% @doc
%%% P14. Duplicate the elements of a list.
%%% @end
%%%-------------------------------------------------------------------
-module(p14).

%% API
-export([sol1/1]).

sol1(A) -> [X || X<-A, _<-[1,1]].
