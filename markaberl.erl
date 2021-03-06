-module(markaberl).
-export([build/1, test/0]).

test() ->
  "<tag>innertext</tag>" = build({tag, innertext}),
  "<tag><anothertag>innertext</anothertag></tag>" = build({tag, { anothertag, innertext}}),
  "<tag><anothertag>innertext</anothertag><sibling>neighbor</sibling></tag>" = build({tag, [{ anothertag, innertext}, {sibling, neighbor}]}),
  success.

build({Tag, Body}) when is_tuple(Body) ->
  build({Tag, list_to_atom(build(Body))});
build({Tag, Body}) when is_list(Body) ->
    build({Tag, list_to_atom(lists:flatmap(fun build/1, Body))});
build({Tag, Body}) ->
  TagString = atom_to_list(Tag),
  "<"++TagString++">"++atom_to_list(Body)++"</"++TagString++">".
