import HOLLight.mapping

set_option linter.style.header false
set_option linter.style.missingEnd false
set_option linter.unusedVariables false
set_option linter.style.longLine false


namespace HOLLight.terms

@[reducible]
noncomputable def CURRY {A B C : Type _} [Nonempty A] [Nonempty B] [Nonempty C] : ((prod A B) -> C) -> A -> B -> C := fun _1283 : (prod A B) -> C => fun _1284 : A => fun _1285 : B => _1283 (@prod_mk A B _ _ _1284 _1285)
nonrec theorem CURRY_def {A B C : Type _} [Nonempty A] [Nonempty B] [Nonempty C] : (@CURRY A B C _ _ _) = (fun _1283 : (prod A B) -> C => fun _1284 : A => fun _1285 : B => _1283 (@prod_mk A B _ _ _1284 _1285)) := by apply Eq.refl (@CURRY A B C _ _ _)
@[reducible]
noncomputable def UNCURRY {A B C : Type _} [Nonempty A] [Nonempty B] [Nonempty C] : (A -> B -> C) -> (prod A B) -> C := fun _1304 : A -> B -> C => fun _1305 : prod A B => _1304 (@prod_fst A B _ _ _1305) (@prod_snd A B _ _ _1305)
nonrec theorem UNCURRY_def {A B C : Type _} [Nonempty A] [Nonempty B] [Nonempty C] : (@UNCURRY A B C _ _ _) = (fun _1304 : A -> B -> C => fun _1305 : prod A B => _1304 (@prod_fst A B _ _ _1305) (@prod_snd A B _ _ _1305)) := by apply Eq.refl (@UNCURRY A B C _ _ _)
@[reducible]
noncomputable def PASSOC {A B C D : Type _} [Nonempty A] [Nonempty B] [Nonempty C] [Nonempty D] : ((prod (prod A B) C) -> D) -> (prod A (prod B C)) -> D := fun _1321 : (prod (prod A B) C) -> D => fun _1322 : prod A (prod B C) => _1321 (@prod_mk (prod A B) C _ _ (@prod_mk A B _ _ (@prod_fst A (prod B C) _ _ _1322) (@prod_fst B C _ _ (@prod_snd A (prod B C) _ _ _1322))) (@prod_snd B C _ _ (@prod_snd A (prod B C) _ _ _1322)))
nonrec theorem PASSOC_def {A B C D : Type _} [Nonempty A] [Nonempty B] [Nonempty C] [Nonempty D] : (@PASSOC A B C D _ _ _ _) = (fun _1321 : (prod (prod A B) C) -> D => fun _1322 : prod A (prod B C) => _1321 (@prod_mk (prod A B) C _ _ (@prod_mk A B _ _ (@prod_fst A (prod B C) _ _ _1322) (@prod_fst B C _ _ (@prod_snd A (prod B C) _ _ _1322))) (@prod_snd B C _ _ (@prod_snd A (prod B C) _ _ _1322)))) := by apply Eq.refl (@PASSOC A B C D _ _ _ _)
@[reducible]
noncomputable def minimal : (Nat -> Prop) -> Nat := fun _6536 : Nat -> Prop => @Classical.epsilon Nat _ (fun n : Nat => (_6536 n) ∧ (∀ m : Nat, (Nat.lt m n) -> ¬ (_6536 m)))
nonrec theorem minimal_def : minimal = (fun _6536 : Nat -> Prop => @Classical.epsilon Nat _ (fun n : Nat => (_6536 n) ∧ (∀ m : Nat, (Nat.lt m n) -> ¬ (_6536 m)))) := by apply Eq.refl minimal
@[reducible]
noncomputable def _22943 : Prop -> Prop -> Prop -> Prop -> Prop -> Prop -> Prop -> Prop -> CHAR := fun a0 : Prop => fun a1 : Prop => fun a2 : Prop => fun a3 : Prop => fun a4 : Prop => fun a5 : Prop => fun a6 : Prop => fun a7 : Prop => _mk_char ((fun a0' : Prop => fun a1' : Prop => fun a2' : Prop => fun a3' : Prop => fun a4' : Prop => fun a5' : Prop => fun a6' : Prop => fun a7' : Prop => @CONSTR (prod Prop (prod Prop (prod Prop (prod Prop (prod Prop (prod Prop (prod Prop Prop))))))) _ (NUMERAL Nat.zero) (@prod_mk Prop (prod Prop (prod Prop (prod Prop (prod Prop (prod Prop (prod Prop Prop)))))) _ _ a0' (@prod_mk Prop (prod Prop (prod Prop (prod Prop (prod Prop (prod Prop Prop))))) _ _ a1' (@prod_mk Prop (prod Prop (prod Prop (prod Prop (prod Prop Prop)))) _ _ a2' (@prod_mk Prop (prod Prop (prod Prop (prod Prop Prop))) _ _ a3' (@prod_mk Prop (prod Prop (prod Prop Prop)) _ _ a4' (@prod_mk Prop (prod Prop Prop) _ _ a5' (@prod_mk Prop Prop _ _ a6' a7'))))))) (fun n : Nat => @BOTTOM (prod Prop (prod Prop (prod Prop (prod Prop (prod Prop (prod Prop (prod Prop Prop))))))) _)) a0 a1 a2 a3 a4 a5 a6 a7)
nonrec theorem _22943_def : _22943 = (fun a0 : Prop => fun a1 : Prop => fun a2 : Prop => fun a3 : Prop => fun a4 : Prop => fun a5 : Prop => fun a6 : Prop => fun a7 : Prop => _mk_char ((fun a0' : Prop => fun a1' : Prop => fun a2' : Prop => fun a3' : Prop => fun a4' : Prop => fun a5' : Prop => fun a6' : Prop => fun a7' : Prop => @CONSTR (prod Prop (prod Prop (prod Prop (prod Prop (prod Prop (prod Prop (prod Prop Prop))))))) _ (NUMERAL Nat.zero) (@prod_mk Prop (prod Prop (prod Prop (prod Prop (prod Prop (prod Prop (prod Prop Prop)))))) _ _ a0' (@prod_mk Prop (prod Prop (prod Prop (prod Prop (prod Prop (prod Prop Prop))))) _ _ a1' (@prod_mk Prop (prod Prop (prod Prop (prod Prop (prod Prop Prop)))) _ _ a2' (@prod_mk Prop (prod Prop (prod Prop (prod Prop Prop))) _ _ a3' (@prod_mk Prop (prod Prop (prod Prop Prop)) _ _ a4' (@prod_mk Prop (prod Prop Prop) _ _ a5' (@prod_mk Prop Prop _ _ a6' a7'))))))) (fun n : Nat => @BOTTOM (prod Prop (prod Prop (prod Prop (prod Prop (prod Prop (prod Prop (prod Prop Prop))))))) _)) a0 a1 a2 a3 a4 a5 a6 a7)) := by apply Eq.refl _22943
@[reducible]
noncomputable def ASCII : Prop -> Prop -> Prop -> Prop -> Prop -> Prop -> Prop -> Prop -> CHAR := _22943
nonrec theorem ASCII_def : ASCII = _22943 := by apply Eq.refl ASCII
