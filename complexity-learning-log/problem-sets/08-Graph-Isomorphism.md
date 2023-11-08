---
title: Oracles & Circuits
author: Ben Little
date: Nov 06, 2023
---

## Problem 1

$\text{GI} \in \text{NP}$

_Proof_. Given an isomorphosm $\pi : G \rightarrow H$, there are $|v(G)|^2$ possible edges to verify, which is polynomial.

Is $\text{GI} \in \text{coNP}$?

Given a possible polynomial-time verifier, it may be possible to construct a map such that verifier gives the wrong result. It may be possible to diagonlize against all such verifiers and prove that GI is not in coNP.

## Problem 2

The trick is to encode the colors of each vertex as a graph structure that is distinguisible from the origial graph in some way. This can be done by adding cliques of size greater than the maximum degree of the original vertices. Here's an attempt to do it with an encoding that is linear the number of vertices.

First enumerate all colors.

Add a single vertex and an edge between every other vertex. This special vertex is distinguishable from all origial vertices because its degree is $|v(G)|$, which is greater than any original vertex (assuming no self-edges). Then split each edge from an original vertex to the special vertex by adding a number vertices corresponding to the color of the original vertex. Hence the path from each original vertex to the special vertex has length equal to the number corresponding to its color. The special vertex is still distinguishible because its degree is too high. All but one of the added path vertices are distinguishible because they are not connected to the the special vertex. The one path vertex directly connected to the special vertex is distinguishible by nature of being directly connected to the special vertex.

\newpage{}

## Problem 3

Use a CGI oracle, which is equivalent to a GI oracle by problem 2.

Pick a vertex $g$ in $G$ and color it red, and the color all other vertices in $G$ blue. Then pick a vertex $h$ in $H$ and do the same. Query the oracle and if an isomorphism exists, assign $\pi : g \mapsto h$. Otherwise pick another $h$ and try again.

This effectively asks, "is there an colored isomrphism that send $g$ to $h$" over and over. There are $n^2$ pairs to check in the worst case, so this is a poly-time reduction.
