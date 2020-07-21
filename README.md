# Deprecated!

If you got here somehow looking for a PureScript GQL solution please refer to [purescript-graphql-client](https://github.com/purescript-graphql-client/purescript-graphql-client) instead. [srghma](https://github.com/srghma) has picked up the work started here in that repository.

# purescript-fernet

*Extremely WIP*

A purescript GQL client library taking inspiration from
Dillon Kearn's work on [elm-graphql](https://github.com/dillonkearns/elm-graphql)
which can be considered as two parts:

- a GQL library that allows for the expression of all valid GQL queries
and guarantees any given query is valid at compile time
- a code generation CLI tool that generates a library for a given endpoint
that guarantees all queries are valid for a given endpoint

Why "Fernet"? I dunno, we use the Elixir library Absinthe at work and it seemed
cute to name it after another spirit.

Feel free to open an issue or message me \@liam on the
[functional programming slack](https://fpchat-invite.herokuapp.com/)
