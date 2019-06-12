module Fernet.Introspection.Schema.Field where

import Prelude

import Data.Maybe (Maybe)
import Fernet.GraphQL.SelectionSet (Argument(..), ArgumentValue(..), RawField(..), SelectionSet(..), noArgs)
import Fernet.Introspection.Schema.Types (Field, InputValue, Type)
import Type.Data.Row (RProxy(..))

name :: SelectionSet (name :: String) Field
name = noArgs "name"

description :: SelectionSet (name :: String) Field
description = noArgs "description"

args ::
  forall r.
  Maybe Boolean ->
  SelectionSet r InputValue ->
  SelectionSet (args :: Array (Record r)) Field
args includeDeprecated (SelectionSet fields _) =
  SelectionSet
    [Composite
      "args"
      [OptionalArgument
        "includeDeprecated"
        (ArgBoolean <$> includeDeprecated)
      ]
      fields
    ]
    RProxy

type' ::
  forall r.
  SelectionSet r Type ->
  SelectionSet (type :: Record r) Field
type' (SelectionSet fields _) =
  SelectionSet [Composite "type" [] fields] RProxy

isDeprecated :: SelectionSet (isDeprecated :: Boolean) Field
isDeprecated = noArgs "isDeprecated"

deprecationReason :: SelectionSet (deprecationReason :: Maybe String) Field
deprecationReason = noArgs "deprecationReason"
