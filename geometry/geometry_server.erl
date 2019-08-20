%%%-------------------------------------------------------------------
%%% @author hiroyuki.tajima
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 13. 8 2019 0:04
%%%-------------------------------------------------------------------
-module(geometry_server).
-author("hiroyuki.tajima").

%% API
-export([loop/0]).

loop() ->
  receive
    {rectangle, Width, Height} ->
      io:format("Area of rectangle is ~p~n", [Width * Height]),
      loop();
    {From, {ractangle,Width, Height}} ->
      From ! Width * Height,
      loop()
  end.
