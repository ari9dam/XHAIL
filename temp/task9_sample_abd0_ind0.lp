#hide.
#show answer/2.
#show use_clause_literal/2.

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

%%% C. Compression
{ use_clause_literal(V1,0) }:-clause(V1).
{ use_clause_literal(V1,V2) }:-clause(V1),literal(V1,V2).
% terminatedAt(location(V1,V2),V3):-holdsAt(location(V1,V2),V4),holdsAt(location(V1,V2),V3),holdsAt(location(V1,V5),V4),holdsAt(location(V1,V5),V3),holdsAt(location(V1,V5),V6),next(V3,V4),next(V6,V3).
clause(0).
literal(0,1).
literal(0,2).
literal(0,3).
literal(0,4).
literal(0,5).
literal(0,6).
literal(0,7).
:-not clause_level(0,0),clause_level(0,1).
clause_level(0,0):-use_clause_literal(0,0).
clause_level(0,1):-use_clause_literal(0,1).
clause_level(0,1):-use_clause_literal(0,2).
clause_level(0,1):-use_clause_literal(0,3).
clause_level(0,1):-use_clause_literal(0,4).
clause_level(0,1):-use_clause_literal(0,5).
clause_level(0,1):-use_clause_literal(0,6).
clause_level(0,1):-use_clause_literal(0,7).
#minimize[ use_clause_literal(0,0) =1 @1 ].
#minimize[ use_clause_literal(0,1) =1 @1 ].
#minimize[ use_clause_literal(0,2) =1 @1 ].
#minimize[ use_clause_literal(0,3) =1 @1 ].
#minimize[ use_clause_literal(0,4) =1 @1 ].
#minimize[ use_clause_literal(0,5) =1 @1 ].
#minimize[ use_clause_literal(0,6) =1 @1 ].
#minimize[ use_clause_literal(0,7) =1 @1 ].
terminatedAt(location(V1,V2),V3):-use_clause_literal(0,0),try_clause_literal(0,1,V1,V2,V4),try_clause_literal(0,2,V1,V2,V3),try_clause_literal(0,3,V1,V5,V4),try_clause_literal(0,4,V1,V5,V3),try_clause_literal(0,5,V1,V5,V6),try_clause_literal(0,6,V3,V4),try_clause_literal(0,7,V6,V3),arg1(V1),arg2(V2),time(V3),time(V4),arg2(V5),time(V6).
try_clause_literal(0,1,V1,V2,V4):-use_clause_literal(0,1),holdsAt(location(V1,V2),V4),arg1(V1),arg2(V2),time(V4).
try_clause_literal(0,1,V1,V2,V4):-not use_clause_literal(0,1),arg1(V1),arg2(V2),time(V4).
try_clause_literal(0,2,V1,V2,V3):-use_clause_literal(0,2),holdsAt(location(V1,V2),V3),arg1(V1),arg2(V2),time(V3).
try_clause_literal(0,2,V1,V2,V3):-not use_clause_literal(0,2),arg1(V1),arg2(V2),time(V3).
try_clause_literal(0,3,V1,V5,V4):-use_clause_literal(0,3),holdsAt(location(V1,V5),V4),arg1(V1),arg2(V5),time(V4).
try_clause_literal(0,3,V1,V5,V4):-not use_clause_literal(0,3),arg1(V1),arg2(V5),time(V4).
try_clause_literal(0,4,V1,V5,V3):-use_clause_literal(0,4),holdsAt(location(V1,V5),V3),arg1(V1),arg2(V5),time(V3).
try_clause_literal(0,4,V1,V5,V3):-not use_clause_literal(0,4),arg1(V1),arg2(V5),time(V3).
try_clause_literal(0,5,V1,V5,V6):-use_clause_literal(0,5),holdsAt(location(V1,V5),V6),arg1(V1),arg2(V5),time(V6).
try_clause_literal(0,5,V1,V5,V6):-not use_clause_literal(0,5),arg1(V1),arg2(V5),time(V6).
try_clause_literal(0,6,V3,V4):-use_clause_literal(0,6),next(V3,V4),time(V3),time(V4).
try_clause_literal(0,6,V3,V4):-not use_clause_literal(0,6),time(V3),time(V4).
try_clause_literal(0,7,V6,V3):-use_clause_literal(0,7),next(V6,V3),time(V6),time(V3).
try_clause_literal(0,7,V6,V3):-not use_clause_literal(0,7),time(V6),time(V3).

