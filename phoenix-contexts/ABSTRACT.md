## Talk Abstract

To harness the power of Phoenix’s contexts, we first must understand its roots in Domain-Driven Design. Today, through a Context Mapping exercise, we’ll develop key architectural insights for our app. We’ll then apply our learnings in code to write highly-cohesive, loosely-coupled systems!

## Talk Description

Phoenix contexts are a powerful code organization tool - but without a clear idea of what business domains live under the hood of your systems, naively creating contexts leads to over-engineered, fragile systems.

Today, we’ll learn about the philosophical roots of Bounded Contexts from the hard-earned wisdom of Domain-Driven Design. We’ll quickly get our hands dirty in the nuts and bolts of a Context Mapping exercise, a strategic design tool that reveals domain-specific system boundaries. With our newfound architectural vision, we’ll learn how to write context-driven Phoenix code and develop some organizational rules around communication, boundary enforcement and testing between contexts. We’ll leverage the unique powers of Elixir that make this style of architecture so natural and see how using contexts easily leads to highly-cohesive and loosely-coupled outcomes!

## Notes

I gave a version of this talk at Railsconf 2017, advocating the very structure of Phoenix Contexts as applied to Rails code, arguing that code that is organized by domain (context) is more cohesive and less coupled in the long run.

See the video here: https://www.youtube.com/watch?v=52qChRS4M0Y

...and the slides here: https://speakerdeck.com/andrewhao/built-to-last-a-domain-driven-approach-to-beautiful-systems

This talk is one-half architectural discussion around Domain-Driven Design and some key concepts - Domain, Subdomain, Bounded Context. It uses Dave Parnas' _Information Hiding_ paper as a key architectural focal point. The Context Mapping exercise will be illustrated from a sample app that I'll expand upon in the course of the discussion.

The latter half of the talk discusses how to implement and design Contexts across our application and how to address some edge cases around contexts. Some examples:

* Using a top-level context as a concrete public interface to external contexts
* How to mock a context in tests
* Inter-context communication
* Contexts that have async code
* Database table management between contexts
* Using behaviours and type specs to enforce boundary conditions
* Contexts that are hosted elsewhere (e.g. a context that is a wrapper around a 3rd party API, or another microservice)
