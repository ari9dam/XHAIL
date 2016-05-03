#hide.
#show holdsAt/2.
#show use_clause_literal/2.

%%% B. Background
time(1..8).
arg3(apple;milk;football).
arg2(hallway;garden;office;kitchen;bathroom;bedroom).
arg1(daniel;sandra;mary;john).
fluent(location(X,Y)):-arg3(X),arg2(Y).
event(go(X,Y)):-arg1(X),arg2(Y).
event(go_back(X,Y)):-arg1(X),arg2(Y).
event(move(X,Y)):-arg1(X),arg2(Y).
event(travel(X,Y)):-arg1(X),arg2(Y).
event(journey(X,Y)):-arg1(X),arg2(Y).
event(get(X,Y)):-arg1(X),arg3(Y).
event(pick_up(X,Y)):-arg1(X),arg3(Y).
event(discard(X,Y)):-arg1(X),arg3(Y).
event(put_down(X,Y)):-arg1(X),arg3(Y).
event(leave(X,Y)):-arg1(X),arg3(Y).
event(drop(X,Y)):-arg1(X),arg3(Y).
event(grab(X,Y)):-arg1(X),arg3(Y).
event(take(X,Y)):-arg1(X),arg3(Y).
holdsAt(F,T+1):-fluent(F),time(T),initiatedAt(F,T).
holdsAt(F,T+1):-fluent(F),time(T),holdsAt(F,T),not terminatedAt(F,T).
neq(X,Y):-arg2(X),arg2(Y),X!=Y.
lessThan(T,S):-time(T),time(S),T<S.
next(T,S):-time(T),time(S),T=S+1.
happensAt(move(mary,bathroom),1).
happensAt(journey(sandra,bedroom),2).
happensAt(get(mary,football),3).
happensAt(go(john,kitchen),4).
happensAt(go_back(mary,kitchen),5).
happensAt(go_back(mary,garden),6).

%%% E. Examples
% #example holdsAt(location(football,garden),7).

:-not holdsAt(location(football,garden),7).
% #example not holdsAt(location(football,kitchen),7).

:-holdsAt(location(football,kitchen),7).

%%% C. Compression
{ use_clause_literal(V1,0) }:-clause(V1).
{ use_clause_literal(V1,V2) }:-clause(V1),literal(V1,V2).
% initiatedAt(location(V1,V2),V3):-happensAt(get(V4,V1),V5),happensAt(go_back(V4,V2),V6),initiatedAt(location(V1,V2),V3),lessThan(V5,V6),lessThan(V3,V5),lessThan(V3,V6).
clause(0).
literal(0,1).
literal(0,2).
literal(0,3).
literal(0,4).
literal(0,5).
literal(0,6).
:-not clause_level(0,0),clause_level(0,1).
clause_level(0,0):-use_clause_literal(0,0).
clause_level(0,1):-use_clause_literal(0,1).
clause_level(0,1):-use_clause_literal(0,2).
clause_level(0,1):-use_clause_literal(0,3).
clause_level(0,1):-use_clause_literal(0,4).
clause_level(0,1):-use_clause_literal(0,5).
clause_level(0,1):-use_clause_literal(0,6).
#minimize[ use_clause_literal(0,0) =1 @1 ].
#minimize[ use_clause_literal(0,1) =1 @1 ].
#minimize[ use_clause_literal(0,2) =1 @1 ].
#minimize[ use_clause_literal(0,3) =1 @1 ].
#minimize[ use_clause_literal(0,4) =1 @1 ].
#minimize[ use_clause_literal(0,5) =1 @1 ].
#minimize[ use_clause_literal(0,6) =1 @1 ].
initiatedAt(location(V1,V2),V3):-use_clause_literal(0,0),try_clause_literal(0,1,V4,V1,V5),try_clause_literal(0,2,V4,V2,V6),try_clause_literal(0,3,V1,V2,V3),try_clause_literal(0,4,V5,V6),try_clause_literal(0,5,V3,V5),try_clause_literal(0,6,V3,V6),arg3(V1),arg2(V2),time(V3),arg1(V4),time(V5),time(V6).
try_clause_literal(0,1,V4,V1,V5):-use_clause_literal(0,1),happensAt(get(V4,V1),V5),arg1(V4),arg3(V1),time(V5).
try_clause_literal(0,1,V4,V1,V5):-not use_clause_literal(0,1),arg1(V4),arg3(V1),time(V5).
try_clause_literal(0,2,V4,V2,V6):-use_clause_literal(0,2),happensAt(go_back(V4,V2),V6),arg1(V4),arg2(V2),time(V6).
try_clause_literal(0,2,V4,V2,V6):-not use_clause_literal(0,2),arg1(V4),arg2(V2),time(V6).
try_clause_literal(0,3,V1,V2,V3):-use_clause_literal(0,3),initiatedAt(location(V1,V2),V3),arg3(V1),arg2(V2),time(V3).
try_clause_literal(0,3,V1,V2,V3):-not use_clause_literal(0,3),arg3(V1),arg2(V2),time(V3).
try_clause_literal(0,4,V5,V6):-use_clause_literal(0,4),lessThan(V5,V6),time(V5),time(V6).
try_clause_literal(0,4,V5,V6):-not use_clause_literal(0,4),time(V5),time(V6).
try_clause_literal(0,5,V3,V5):-use_clause_literal(0,5),lessThan(V3,V5),time(V3),time(V5).
try_clause_literal(0,5,V3,V5):-not use_clause_literal(0,5),time(V3),time(V5).
try_clause_literal(0,6,V3,V6):-use_clause_literal(0,6),lessThan(V3,V6),time(V3),time(V6).
try_clause_literal(0,6,V3,V6):-not use_clause_literal(0,6),time(V3),time(V6).
% initiatedAt(location(V1,V2),V3):-happensAt(get(V4,V1),V5),happensAt(move(V4,V2),V6),initiatedAt(location(V1,V7),V6),initiatedAt(location(V1,V2),V3),neq(V7,V2),neq(V2,V7),lessThan(V5,V3),lessThan(V6,V5),lessThan(V6,V3).
clause(1).
literal(1,1).
literal(1,2).
literal(1,3).
literal(1,4).
literal(1,5).
literal(1,6).
literal(1,7).
literal(1,8).
literal(1,9).
:-not clause_level(1,0),clause_level(1,1).
clause_level(1,0):-use_clause_literal(1,0).
clause_level(1,1):-use_clause_literal(1,1).
clause_level(1,1):-use_clause_literal(1,2).
clause_level(1,1):-use_clause_literal(1,3).
clause_level(1,1):-use_clause_literal(1,4).
clause_level(1,1):-use_clause_literal(1,5).
clause_level(1,1):-use_clause_literal(1,6).
clause_level(1,1):-use_clause_literal(1,7).
clause_level(1,1):-use_clause_literal(1,8).
clause_level(1,1):-use_clause_literal(1,9).
#minimize[ use_clause_literal(1,0) =1 @1 ].
#minimize[ use_clause_literal(1,1) =1 @1 ].
#minimize[ use_clause_literal(1,2) =1 @1 ].
#minimize[ use_clause_literal(1,3) =1 @1 ].
#minimize[ use_clause_literal(1,4) =1 @1 ].
#minimize[ use_clause_literal(1,5) =1 @1 ].
#minimize[ use_clause_literal(1,6) =1 @1 ].
#minimize[ use_clause_literal(1,7) =1 @1 ].
#minimize[ use_clause_literal(1,8) =1 @1 ].
#minimize[ use_clause_literal(1,9) =1 @1 ].
initiatedAt(location(V1,V2),V3):-use_clause_literal(1,0),try_clause_literal(1,1,V4,V1,V5),try_clause_literal(1,2,V4,V2,V6),try_clause_literal(1,3,V1,V7,V6),try_clause_literal(1,4,V1,V2,V3),try_clause_literal(1,5,V7,V2),try_clause_literal(1,6,V2,V7),try_clause_literal(1,7,V5,V3),try_clause_literal(1,8,V6,V5),try_clause_literal(1,9,V6,V3),arg3(V1),arg2(V2),time(V3),arg1(V4),time(V5),time(V6),arg2(V7).
try_clause_literal(1,1,V4,V1,V5):-use_clause_literal(1,1),happensAt(get(V4,V1),V5),arg1(V4),arg3(V1),time(V5).
try_clause_literal(1,1,V4,V1,V5):-not use_clause_literal(1,1),arg1(V4),arg3(V1),time(V5).
try_clause_literal(1,2,V4,V2,V6):-use_clause_literal(1,2),happensAt(move(V4,V2),V6),arg1(V4),arg2(V2),time(V6).
try_clause_literal(1,2,V4,V2,V6):-not use_clause_literal(1,2),arg1(V4),arg2(V2),time(V6).
try_clause_literal(1,3,V1,V7,V6):-use_clause_literal(1,3),initiatedAt(location(V1,V7),V6),arg3(V1),arg2(V7),time(V6).
try_clause_literal(1,3,V1,V7,V6):-not use_clause_literal(1,3),arg3(V1),arg2(V7),time(V6).
try_clause_literal(1,4,V1,V2,V3):-use_clause_literal(1,4),initiatedAt(location(V1,V2),V3),arg3(V1),arg2(V2),time(V3).
try_clause_literal(1,4,V1,V2,V3):-not use_clause_literal(1,4),arg3(V1),arg2(V2),time(V3).
try_clause_literal(1,5,V7,V2):-use_clause_literal(1,5),neq(V7,V2),arg2(V7),arg2(V2).
try_clause_literal(1,5,V7,V2):-not use_clause_literal(1,5),arg2(V7),arg2(V2).
try_clause_literal(1,6,V2,V7):-use_clause_literal(1,6),neq(V2,V7),arg2(V2),arg2(V7).
try_clause_literal(1,6,V2,V7):-not use_clause_literal(1,6),arg2(V2),arg2(V7).
try_clause_literal(1,7,V5,V3):-use_clause_literal(1,7),lessThan(V5,V3),time(V5),time(V3).
try_clause_literal(1,7,V5,V3):-not use_clause_literal(1,7),time(V5),time(V3).
try_clause_literal(1,8,V6,V5):-use_clause_literal(1,8),lessThan(V6,V5),time(V6),time(V5).
try_clause_literal(1,8,V6,V5):-not use_clause_literal(1,8),time(V6),time(V5).
try_clause_literal(1,9,V6,V3):-use_clause_literal(1,9),lessThan(V6,V3),time(V6),time(V3).
try_clause_literal(1,9,V6,V3):-not use_clause_literal(1,9),time(V6),time(V3).

