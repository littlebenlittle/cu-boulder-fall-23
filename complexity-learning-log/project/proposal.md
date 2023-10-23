---
title: Project Proposal
author: Ben Little
date: Oct 23, 2023
---

## Idea 1: Formalize Basic Complexity Results in Agda

I will look into existing complexity libraries for Coq, Agda, and other proof assistants. I will compare different models like *boolean*-valued predicates vs *type*-valued predicates. I will attempt to demonstrate some proofs we did in the problem sets, like showing that $\textbf{C} \subseteq \text{co}\textbf{C} \implies \textbf{C} = \text{co}\textbf{C}$ and the Time Hierarchy Theorem.

Some starting points for this research are

* Xu, Jian, Xingyuan Zhang, and Christian Urban. "Mechanising turing machines and computability theory in Isabelle/HOL." Interactive Theorem Proving: 4th International Conference, ITP 2013, Rennes, France, July 22-26, 2013. Proceedings 4. Springer Berlin Heidelberg, 2013.
* Gäher, Lennard, and Fabian Kunze. "Mechanising complexity theory: the cook-Levin theorem in Coq." 12th International Conference on Interactive Theorem Proving (ITP 2021). Schloss Dagstuhl-Leibniz-Zentrum für Informatik, 2021.

## Idea 2: Complexity Theory in Other Areas of Science

This is a more subjective research topic. I will look for areas of science where complexity theory has practical applications. Some possible routes are

* Power analysis in machine learning and statistical models
* Distinguisahbility of alternative models
* Soundness of abstract domains in static analysis

It would also be interesting to see if complexity theory has _the same_ formalization as another area of math, but that would probably rely heavily on Idea 1.
