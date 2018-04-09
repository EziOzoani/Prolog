
% part 1
s --> u(Count),[2],v(Count).

u(0) --> [].
u(succ(Count)) --> [0],u(Count).
u(Count) --> [1],u(Count).

v(0) --> [].
v(succ(Count)) --> [1],v(Count).
v(Count) --> [0],v(Count).

%part 2


s -->	{dif(Col1, Col2), dif(Col1, Col3), dif(Col2, Col3)},
		{dif(Nat1, Nat2), dif(Nat1, Nat3), dif(Nat2, Nat3)},
		{dif(Pet1, Pet2), dif(Pet1, Pet3), dif(Pet2, Pet3)},
		house(Col1, Nat1, Pet1), house(Col2, Nat2, Pet2), house(Col3, Nat3, Pet3).

house(C, N, P) --> colour(C), nationality(N), pet(P).

colour(red) --> [red].
colour(blue) --> [blue].
colour(green) --> [green].

nationality(english) --> [english].
nationality(spanish) --> [spanish].
nationality(japanese) --> [japanese].

pet(jaguar) --> [jaguar].
pet(snail) --> [snail].
pet(zebra) --> [zebra].

%part 3 

mkList(0, []).
mkList(Num, [Num | L]) :- N is Num - 1, N >= 0, mkList(N, L).

s(0) --> [].
s(C) --> { mkList(C, L), member(X, L), C0 is C - X }, [X], s(C0).