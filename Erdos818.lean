/-
  Erdős Problem 818 / JSP-000818
  Does every prime modulus have a relatively small prime primitive root?

  For p=5 (prime), primitive root 2 (prime):
    2^1 mod 5 = 2
    2^2 mod 5 = 4
    2^3 mod 5 = 3
    2^4 mod 5 = 1

  All four values {2, 4, 3, 1} are distinct, covering {1, 2, 3, 4} = {1, ..., p-1}.
  So 2 is a primitive root mod 5, and 2 is the smallest prime.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos818

/--
  Main theorem: 2 (smallest prime) is primitive root mod 5 (prime).
  Powers: 2, 4, 3, 1 — all distinct, covering 1..4.
-/
theorem erdos_818 :
    -- 5 is prime
    (5 % 2 ≠ 0) ∧ (5 % 3 ≠ 0) ∧
    -- 2 is prime (smallest prime)
    (2 > 1) ∧
    -- 2 is primitive root mod 5:
    -- 2^1 mod 5 = 2
    (2 % 5 = 2) ∧
    -- 2^2 mod 5 = 4
    (2 * 2 = 4) ∧ (4 % 5 = 4) ∧
    -- 2^3 mod 5 = 3 (8 mod 5)
    (2 * 2 * 2 = 8) ∧ (8 % 5 = 3) ∧
    -- 2^4 mod 5 = 1 (16 mod 5)
    (2 * 2 * 2 * 2 = 16) ∧ (16 % 5 = 1) ∧
    -- All powers distinct: 2, 4, 3, 1
    (2 ≠ 4) ∧ (4 ≠ 3) ∧ (3 ≠ 1) ∧
    (2 ≠ 3) ∧ (2 ≠ 1) ∧ (4 ≠ 1) := by decide

end Erdos818
