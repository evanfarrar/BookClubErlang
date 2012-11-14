-module(markaberl).
-export([test/0]).

test() ->
  "<tag>innertext</tag>" = build({tag, innertext}),
  success.

build({Tag, Body}) ->
  TagString = atom_to_list(Tag),
  "<"++TagString++">"++atom_to_list(Body)++"</"++TagString++">".
