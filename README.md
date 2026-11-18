HOL-Light libraries in Lean
---------------------------

This [Lean](https://lean-lang.org/) library contains an automatic translation of the [HOL-Light](https://github.com/jrh13/hol-light) base library up to the definition of real numbers with the HOL-Light types and functions [mapped](https://github.com/Deducteam/lean-hollight/blob/main/Multivariate/mappings.lp) to the corresponding types and functions of the Lean [Mathlib](https://mathlib.org/) so that, for instance, a HOL-Light theorem on HOL-Light real numbers is translated to a Lean theorem on Lean real numbers. The provided theorems can therefore be readily used within other Lean developments. More types and functions need to be aligned though (see below how to contribute). The translation has been done using [hol2dk](https://github.com/Deducteam/hol2dk) to extract and translate HOL-Light proofs to Lambdapi files, and [lambdapi](https://github.com/Deducteam/lambdapi) to translate Lambdapi files to Lean files.

**Reproducibility**

The translated theorems are provided as axioms in order to have a fast import because the proofs currently extracted from HOL-Light are very big and not very informative for they are low level (the translation is done at the kernel level, not at the source level). If you are skeptical, you can however generate and check them again by using the script [reproduce](https://github.com/Deducteam/lean-hollight/blob/main/reproduce). If everything works well, the proofs will be in the directory `tmp/output`. Their verification by Lean takes about 25 minutes on an Intel Core i9-13950HX with 32 processors and 128 Gb RAM.

**How to contribute?**

You can easily contribute by proving the correctness of more mappings in Lean:

- Look in [terms.lean](https://github.com/Deducteam/lean-hollight/blob/main/terms.lean) for the definition of a function symbol, say f, that you want to replace; note that it is followed by a lemma f_DEF stating what f is equal to.

- Copy and paste in [mapping.lean](https://github.com/Deducteam/lean-hollight/blob/main/mapping.lean) the lemma f_DEF, and try to prove it if f is replaced by your own function. Helper tactics are provided in [mapping.lean](https://github.com/Deducteam/lean-hollight/blob/main/mapping.lean).

- Create a [pull request](https://github.com/Deducteam/lean-hollight/pulls).

You can also propose to change the mapping of some type in one of the mappings files. Every HOL-Light type `A` is axiomatized as being isomorphic to the subset of elements `x` of some already defined type `B` that satisfies some property `p:B->Prop`. `A` can always be mapped to the Lean type `{x:B|p(x)}` but it is possible to map it to a another type `A'` by defining two functions:

- `mk:B->A'`

- `dest:A'->B`

and proving two lemmas:

- `mk_dest x: mk (dest x) = x`

- `dest_mk x: P x = (dest (mk x) = x)`

showing that `A'` is isomorphic to `{x:B|p(x)}`.

**Related bibliography**

- [Aligning HOL-Light and Rocq libraries formally](https://inria.hal.science/hal-05735837), Frédéric Blanqui and Antoine Gontard, 27th International Conference on Logic for Programming, Artificial intelligence and Reasoning (LPAR), 2026.
- [Translating HOL-Light proofs to Coq](https://doi.org/10.29007/6k4x), Frédéric Blanqui, 25th International Conference on Logic for Programming, Artificial intelligence and Reasoning (LPAR), 2024.
