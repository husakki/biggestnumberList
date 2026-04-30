-module(bnl).

-export([maxList/1]).

maxList(List) when List == [] ->
   io:format("List is empty\n");

maxList(List) ->
    [Head | Tail] = List,
    maxList(Tail,Head).

maxList([Head|List], Biggest) when Head > Biggest ->
    maxList(List, Head);

maxList([_| Tail] , Biggest) ->
    maxList(Tail, Biggest);

maxList([],Biggest) ->
    io:format("The biggest number is: ~p\n",[Biggest]).