{-# OPTIONS --without-K --exact-split --allow-unsolved-metas #-}
-- add --safe when there are no more holes

open import Categories.Category -- we need it all
open import Categories.Category.Monoidal using (Monoidal)
open import Categories.Category.Monoidal.Symmetric using (Symmetric)
open import Categories.Category.RigCategory

open import Categorical.SqrtRig

-- Everything is over a SqrtRig
module Categorical.MatProp {o ℓ e} {C : Category o ℓ e}
  {M⊎ M× : Monoidal C} {S⊎ : Symmetric M⊎}
  {S× : Symmetric M×} {R : RigCategory C S⊎ S×} (SR : SqrtRig R) where

  open import Level using (Level)

  -- open import Categories.Category.Monoidal.Interchange.Braided (Symmetric.braided S⊎) using (module swapInner)
  import Categories.Category.Monoidal.Reasoning as MonR
  
  private
    module S⊎ = Symmetric S⊎

  open import Categorical.Scalars SR
  open import Categorical.Gates SR
  
  open Category C -- all of it
  open HomReasoning
  open SqrtRig SR
  open Kit R
  -- open MonR M× using (_⟩⊗⟨refl)
  -- open MonR M⊎ using () renaming (_⟩⊗⟨refl to _⟩⊕⟨refl)

  private
    variable
      A B : Obj
      f : A ⇒ B
      s t : Scalar
      
  ----------------------------------------------------------------
  -- Lemma 4.5
  -- (1)
  Mat-f-right : Mat ∘ (id ⊗₁ f) ≈ (f ⊕₁ f) ∘ Mat
  Mat-f-right = {!!}

  -- (2)
  Mat-SWAP : Mat ∘ SWAP ≈ Midswap ∘ Mat
  Mat-SWAP = {!!}

  -- (3)
  SWAP-Mat⁻¹ : SWAP ∘ Mat⁻¹ ≈ Mat⁻¹ ∘ Midswap
  SWAP-Mat⁻¹ = {!!}

  -- (4)
  Mat-f-left : Mat ∘ (f ⊗₁ id) ≈ Midswap ∘ (f ⊕₁ f) ∘ Midswap ∘ Mat
  Mat-f-left = {!!}

  -- (5)
  SWAP-CP-SWAP : SWAP ∘ Ctrl (P s) ∘ SWAP ≈ Ctrl (P s)
  SWAP-CP-SWAP = {!!}
