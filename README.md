Lens Proposal
=============

Introduction
------------

This is a project written in the Haskell programming language. It is intended to model lens programming in a hypothetical Haskell-like language with integration. The proposal is ultimately intended to determine the optimal way to integrate lenses into a new programming language. This might include a language such as one that compiles to the JVM or to JavaScript source. Therefore, this project ignores the limitations of the Haskell language and libraries.

Haskell is used simply because it exists and has good tool support. It is expected that translating this proposal to a specific programming language would not require too much compromise of the details of the proposal. The programming language is assumed to have rank-n types and so this is also assumed in all Haskell source files.

This project also includes a type-class hierarchy, similar to typeclassopaedia, because this is important to lens programming. This type-class hierarchy is quite different to that in the GHC base libraries, because it is assumed that a new programming language has the liberty to implement this hierarchy without the burden of reverse-compatibility.

The Ultimate Goal
-----------------

Lenses have been written about extensively, however, there are various ways of modelling them, Ultimately and specifically, the primary goal of this proposal is to demonstrate and include usage examples of how lenses would integrate with a new programming language, including a specific model of lenses themselves.

