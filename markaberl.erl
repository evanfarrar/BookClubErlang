-module(markaberl).
-export([test/0]).

test() ->
  "<tag>innertext</tag>" = build({tag, innertext}),
  success.

build(Tag) ->
  "".
