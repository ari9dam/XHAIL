#hide.
#show abduced_terminatedAt/2.
#show answer/2.
#show arg1/1.
#show arg2/1.
#show holdsAt/2.
#show next/2.
#show terminatedAt/2.
#show time/1.

%%% B. Background
time(1..22).
arg1(sandra;john;daniel).
arg2(garden;office;kitchen;bathroom).
fluent(location(X,Y)):-arg1(X),arg2(Y).
holdsAt(F,T+1):-fluent(F),time(T),initiatedAt(F,T).
holdsAt(F,T+1):-fluent(F),time(T),holdsAt(F,T),not terminatedAt(F,T).
next(T,S):-T=S+1,time(T),time(S).
initiatedAt(location(V1,V2),V3):-happensAt(travel(V1,V2),V3),arg1(V1),arg2(V2),time(V3).
terminatedAt(location(V1,V2),V3):-happensAt(move(V1,V4),V3),arg1(V1),arg2(V2),time(V3),arg2(V4).
initiatedAt(location(V1,V2),V3):-happensAt(journey(V1,V2),V3),arg1(V1),arg2(V2),time(V3).
initiatedAt(location(V1,V2),V3):-happensAt(move(V1,V2),V3),arg1(V1),arg2(V2),time(V3).
terminatedAt(location(V1,V2),V3):-happensAt(journey(V1,V4),V3),arg1(V1),arg2(V2),time(V3),arg2(V4).
initiatedAt(location(V1,V2),V3):-happensAt(go_back(V1,V2),V3),arg1(V1),arg2(V2),time(V3).
initiatedAt(location(V1,V2),V3):-happensAt(go(V1,V2),V3),arg1(V1),arg2(V2),time(V3).
terminatedAt(location(V1,V2),V3):-happensAt(go_back(V1,V4),V3),arg1(V1),arg2(V2),time(V3),arg2(V4).
terminatedAt(location(V1,V2),V3):-happensAt(travel(V1,V4),V3),arg1(V1),arg2(V2),time(V3),arg2(V4).
terminatedAt(location(V1,V2),V3):-happensAt(go(V1,V4),V3),arg1(V1),arg2(V2),time(V3),arg2(V4).
happensAt(travel(sandra,garden),1).
holdsAt(location(sandra,office),2).
answer(id4,yes):-holdsAt(location(sandra,garden),4).
answer(id4,no):-not answer(id4,yes).
terminatedAt(location(sandra,office),4).
holdsAt(location(daniel,kitchen),7).
answer(id9,yes):-holdsAt(location(sandra,office),9).
answer(id9,no):-not answer(id9,yes).
terminatedAt(location(john,garden),9).
terminatedAt(location(daniel,kitchen),11).
answer(id14,yes):-holdsAt(location(daniel,kitchen),14).
answer(id14,no):-not answer(id14,yes).
happensAt(go(daniel,bathroom),15).
happensAt(go_back(john,bathroom),16).
answer(id17,yes):-holdsAt(location(john,bathroom),17).
answer(id17,no):-not answer(id17,yes).
terminatedAt(location(daniel,bathroom),17).
holdsAt(location(sandra,kitchen),20).
answer(id22,yes):-holdsAt(location(daniel,bathroom),22).
answer(id22,no):-not answer(id22,yes).

%%% E. Examples
% #example answer(id4,no).

:-not answer(id4,no).
% #example answer(id9,no).

:-not answer(id9,no).
% #example answer(id14,no).

:-not answer(id14,no).
% #example answer(id17,yes).

:-not answer(id17,yes).
% #example answer(id22,no).

:-not answer(id22,no).

%%% I. Inflation
% #modeh terminatedAt(location(+arg1,+arg2),+time).
0 { abduced_terminatedAt(location(V1,V2),V3) :arg1(V1) :arg2(V2) :time(V3) } 2147483647.
#minimize[ abduced_terminatedAt(location(V1,V2),V3) =1 @1 :arg1(V1) :arg2(V2) :time(V3) ].
terminatedAt(location(V1,V2),V3):-abduced_terminatedAt(location(V1,V2),V3),arg1(V1),arg2(V2),time(V3).

