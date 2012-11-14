== 7li7w Erlang

This is a small companion to the Seven Languages in Seven Weeks Erlang chapter that I am giving for the Pivotal NYC Book Club.

It contains no content from the book, just an introduction to Erlang with a focus on things Pivots might care about.

0. Install
1. Test Driven Development
2. Ruby vs. Erlang
3. Ok, so what can I do with it?

== Install

brew install erlang

Insert obligatory ex-slackware-user grumble here.

== Test driven development

We're going to develop a tiny library that emulates Markaby, a ruby HTML library that takes ruby code like this
html do
  body do
    h1 "Hello, Web!"
  end
end

and turn it into html like this:
<html><body><h1>Hello, Web!</h1></body></html>

Similarly we are going to take an Erlang tuple like this and turn it into the same HTML:
{html, {body, {h1, "Hello, Web!"}}}

In the process we are going to see matching, TDD for functional programming, and a contrived concurrency example.

== Ruby vs. Erlang
I'm going to make some inappropriate comparisons between Erlang and Ruby:

Modules vs. classes
  privacy
Functions vs. methods
Concurrency Oriented vs. Object Oriented
  Actors/Processes vs. Objects
  ! vs. send
Fail fast vs. defensive programming

== OK, so what can I do with it?

Erlang is a veteran language with extensive libraries available for any purpose. It is a fine general purpose language that can be used for full stack applications but really shines on the backend and operational areas. In some areas such as telephony, Enterprise Server Bus and chat, they have arguably the *best* library for the given purpose. Given the pattern matching and concurrency, Erlang would also be a wise choice for any new network server you need to write.