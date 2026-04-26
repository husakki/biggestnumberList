-module(bnl).

-export([maxList/1]).

maxList(List) when List == [] ->
   io:format("List is empty\n");

maxList(List) ->
    [Head | Tail] = List,
    maxList(Tail,Head).

maxList(List, Biggest) ->
    ok.