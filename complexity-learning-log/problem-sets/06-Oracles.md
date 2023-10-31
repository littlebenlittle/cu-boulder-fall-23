---
title: Oracles & Circuits
author: Ben Little
date: Oct ??, 2023
---

## Problem 1

### Part 1

$L_A \in \text{PSPACE}$ because it takes 1 bit to store the parity as each of the $2^n$ possible strings is queried.

### Part 2

Consider some ordering of NP machines where machine $M_i(1^n)$ is time bounded by $n^f(i)$ for some monotonic increasing $f$.

1. Looking at $M_i$, pick $n$ large enough all prior machines could not have queried strings of length $n$ within their time bounds.
2. Then if $M_i(1^n) = 1$ and $1^n \in L_A$, pick any accepting trace and add/remove some of the strings in $A$ NOT queried so that $1^n \notin L_A$ while $M_i(1^n)$ is still 1.
3. If $M_i(1^n) = 0$ and $1^n \notin L_{A}$, add a length-$n$ string to $A$ to $1^n \in A$. If then $M_i(1^n)$ is still $0$, then $M_i$ disagrees with $L_A$ on $1^n$. On the other hand if $M_i(1^n)$ is now $1$, perform step 2 so that again $1^n \notin A$ but $M_i(1^n)$ is still $1$.

## Problem 2

_No attempt yet_

## Problem 3

_No attempt yet_

## Problem 4

_No attempt yet_

## Problem 5

_No attempt yet_
