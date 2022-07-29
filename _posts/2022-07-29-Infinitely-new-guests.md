---
layout: post
title: "Buses with infinitely many new guests"
date:   2022-07-29 14:05:42 +0200
categories: math infinite
mathjax: true
tags: TODO
---
<script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>

- We add a finite number of buses
- Each bus has infinite new guests
- Both the hotel and the buses are numbered with natural numbers (_i.e._ $$ \mathbb{N}^+ $$ )

# Do they all fit in the hotel? (_i.e_ $$ \infty \stackrel{?}{=} K \times \infty $$, where $$ K \in \mathbb{N}^+ $$)

## If $$ K = 1 $$

If all the people in the hotel duplicate their room number,
all the odd rooms will be free.

All that will be left is to make the people on the bus go double the number they have minus one.

## General case for $$ K \in \mathbb{N}^+ $$

We will define two-dimensional coordinates:
$$ (a, b) $$,
where $$ a \in \mathbb{N}^0 \cap [0, K] $$
and $$ b \in \mathbb{N}^+ $$

$$
\begin{cases}
\text{hotel}            & (a = 0) \\
\text{bus number } a    & (a > 0)
\end{cases}
$$

Then the general formula to know where they go inside the hotel is:

$$
b ( K +1 ) -a
$$

# References
- [Hilbert's paradox of the Grand Hotel][wiki]
- [Paring function][pairing]
- [Mathjax]
- [_i.e._]

[wiki]: https://en.wikipedia.org/wiki/Hilbert%27s_paradox_of_the_Grand_Hotel
[pairing]: https://en.wikipedia.org/wiki/Pairing_function
[Mathjax]: https://jojozhuang.github.io/tutorial/jekyll-math-symbols-with-mathjax/
[_i.e._]: https://www.upc.edu/slt/ca/recursos-redaccio/criteris-linguistics/abreviacions/abreviatures
