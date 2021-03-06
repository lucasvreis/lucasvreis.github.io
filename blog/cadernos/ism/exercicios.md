# Exercícios

$\global\def\sphere#1{𝕊^{#1}}$
$\global\def\proj#1{ℝℙ^{#1}}$

## $1.\, \text{Variedades Suaves}$

## $\boxed{1}.1$
Podemos defininir uma **_n-variedade topológica_** como um espaço topológico $M$ que satisfaz:
   1. $M$ é Hausdorff
   2. $M$ é segundamente contável
   3. $M$ é localmente euclidiano, ou seja, para todo ponto existe:
      - Uma vizinhança $U ⊆ M$
      - Um aberto $Û$ de $ℝ^n$
      - Um homeomorfismo $φ: U→Û$

Seja essa a definição $(a)$; definições equivalentes seriam requerer:

$\quad (b)\:$ $\hat{U} = B_r(a) ⊆ \Reals^n$\

$\quad (c)\:$ $\hat{U} = \Reals^n$

Para ver isso, primeiro vamos mostrar que $(b)\hArr(c)$:
 - Todas as bolas (não degeneradas) em $\Reals^n$ são homeomorfas, basta compor uma translação com uma homotetia. Seja $\sigma : B_r(a) \to B_1(0)$ uma dessas composições.
 - Construa um mapa $f : B_1(0) \to \Reals^n$ em que $x \mapsto \frac{\hat{x}}{1 - \|x\|}$. Esse mapa é contínuo, e a inversa $f^{-1} : x \mapsto \frac{\hat{x}}{1 + \|x\|}$ também é contínua. Assim, $f$ é homeomorfismo.
 - Como existe um homeomorfismo entre $\Reals^n$ e $B_1(0)$, esses dois conjuntos são homeomorfos. Dessa forma, se para todo ponto p existe um homeomorfismo $\varphi_p : U \to B_r(a)$, também existe o homeomorfismo $\varphi_p \circ \sigma \circ f : U \to \Reals^n$, e sua inversa. Assim, as definições são equivalentes!

Agora, vamos completar a prova que $(a)\hArr(b)\hArr(c)$.
A direção $((b)\hArr(c))\rArr(a)$ é simples. Por outro lado, se todo ponto $p$ está associado à um homeomorfismo $\varphi : U \to \hat{U} \in \Reals^n$, existe uma bola aberta $B ⊆ Û$ que contém $φ(p)$, e a restrição $φ | _{φ^{-1}(B)}$ também é um homeomorfismo. Se definirmos um novo homeomorfismo para cada ponto dessa forma, temos $(a)⇒((b)⇔(c))$, como queríamos.

<!-- ## $\boxed{1}.2$
O espaço $ℝℙ^n$ é uma n-variedade topológica, como iremos provar:

## $\boxed{1}.3$
Vamos mostrar que o espaço $\proj{n}$ é compacto: -->


<!-- TODO -->
<!-- A interseção infinita de todas as vizinhanças de um conjunto é um fechado -->
