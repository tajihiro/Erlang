%%%-------------------------------------------------------------------
%%% @author hiroyuki.tajima
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 13. 8 2019 10:41
%%%-------------------------------------------------------------------
-module(lib_misc).
-author("hiroyuki.tajima").

%% API
-export([on_exit/2]).

on_exit(Pid, Func) ->
  spawn(fun() ->
          process_flag(trap_exit, true),
          link(Pid),
          receive
            {'EXIT', Pid, Why} ->
              Func(Why)
          end
        end).
