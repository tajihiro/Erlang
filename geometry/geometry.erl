%%%-------------------------------------------------------------------
%%% @author hiroyuki.tajima
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 13. 8 2019 0:00
%%%-------------------------------------------------------------------
-module(geometry).
-author("hiroyuki.tajima").

%% API
-export([area/2, area/3]).

area(rectangle, Width, Height) -> Width * Height.
area(circle, R) -> 3.14159 * R * R.
