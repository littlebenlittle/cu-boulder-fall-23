
open import Agda.Primitive

open import Data.Product using (Σ; _,_; ∃; Σ-syntax; ∃-syntax)


data ⊥ : Set where

infixr 4 _≡_
data _≡_ {A : Set} (a : A) : A → Set where
  refl : a ≡ a

data Bool : Set where
  true  : Bool
  false : Bool

infixr 3 _==_
_==_ : Bool → Bool → Bool
true  == true  = true
false == true  = false
true  == false = false
false == false = true

¬_ : Bool → Bool
¬ true = false
¬ false = false

data ℕ : Set where
  zero : ℕ
  suc  : ℕ → ℕ → ℕ

data String : Set where
  ε : String
  _𝟘 : String → String
  _𝟙 : String → String

data Class (X : Set) : Set where
  inst : (X → Bool) → Class X

Lang = Class String

langs-uncountable : ∀ (f : ℕ → Lang) → Σ[ L ∈ Lang ] (∀ (n : ℕ) → f n ≡ L → ⊥)
langs-uncountable f = inst (λ (x : String) → {!   !}) ,  {!   !}
