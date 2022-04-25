# converge

Maintain repo standards using contract definition

## v0.1.0

Uses hygen and has templates for a backend node project. Hygen is designed for generating standards, not maintaining 
them, and will not be able to meet the future goals. This version is limited to initial scaffolding.



## Goals
- major: use contract as source of truth for standards
- major: permit divergence, not exceptions
	- divergence should have a cost
	- the cost is an incentive to converge by upstreaming or removing exceptions
	- that cost can be anything; like a warning in the UI
- major: support migrations
	- able to update standards when a change is made
	- if not automatically, then with instructions for manual update
- minor: structured data injection well-formed/indented

## Questions
- `package.json` `license` field should be computed based on contract privacy, this has not yet been defined in source
  contracts, where in the stack should `license` be computed? Perhaps it should be a computed field of a contract?

## TODO:
- v0.1.0: only prompt to overwrite if existing file is different from output

## Alternatives

**Hygen**
- Note: Hygen can be considered macros for files, optimizes for easy creation of generators when a repetitive
  structure is found
- Pro: No code generation using declarative frontmatter in ejs
- Con: injection does not detect divergence
- Con: asks if should overwrite when contents same as output, not idempotent
