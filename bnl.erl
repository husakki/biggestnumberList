-module(bnl)

-export([bnl/1]).

% bnl(List) when List == [] ->
%    io:format("List is empty").

bnl(List) ->
    [Head | Tail] = List,
    bnl(Tail,Head).

% bnl(List,Biggest) ->
