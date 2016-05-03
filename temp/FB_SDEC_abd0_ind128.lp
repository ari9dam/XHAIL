#hide.
#show holdsAt/2.
#show use_clause_literal/2.

%%% B. Background
time(1..12).
arg2(hallway;garden;office;kitchen;bathroom;bedroom).
arg1(daniel;sandra;mary;john).
fluent(location(X,Y)):-arg1(X),arg2(Y).
event(go(X,Y)):-arg1(X),arg2(Y).
event(go_back(X,Y)):-arg1(X),arg2(Y).
event(move(X,Y)):-arg1(X),arg2(Y).
event(travel(X,Y)):-arg1(X),arg2(Y).
event(journey(X,Y)):-arg1(X),arg2(Y).
holdsAt(F,T+1):-fluent(F),time(T),initiatedAt(F,T).
holdsAt(F,T+1):-fluent(F),time(T),holdsAt(F,T),not terminatedAt(F,T).
neq(X,Y):-arg2(X),arg2(Y),X!=Y.
lessThan(T,S):-time(T),time(S),T<S.
next(T,S):-time(T),time(S),T=S+1.
happensAt(move(mary,bathroom),1).
happensAt(go(john,hallway),2).
happensAt(go_back(daniel,hallway),3).
happensAt(move(sandra,garden),4).
happensAt(move(john,office),5).
happensAt(journey(sandra,bathroom),6).
happensAt(move(mary,hallway),7).
happensAt(travel(daniel,office),8).
happensAt(go_back(john,garden),10).
happensAt(move(john,bedroom),11).
:-holdsAt(location(A,B),T),holdsAt(location(A,C),T),neq(B,C),arg1(A),arg2(B),arg2(C),time(T).

%%% E. Examples
% #example holdsAt(location(mary,bathroom),3).

:-not holdsAt(location(mary,bathroom),3).
% #example not holdsAt(location(mary,hallway),3).

:-holdsAt(location(mary,hallway),3).
% #example holdsAt(location(daniel,hallway),5).

:-not holdsAt(location(daniel,hallway),5).
% #example not holdsAt(location(daniel,garden),5).

:-holdsAt(location(daniel,garden),5).
% #example holdsAt(location(daniel,hallway),7).

:-not holdsAt(location(daniel,hallway),7).
% #example not holdsAt(location(daniel,garden),7).

:-holdsAt(location(daniel,garden),7).
% #example holdsAt(location(daniel,office),9).

:-not holdsAt(location(daniel,office),9).
% #example not holdsAt(location(daniel,hallway),9).

:-holdsAt(location(daniel,hallway),9).
% #example holdsAt(location(sandra,bathroom),12).

:-not holdsAt(location(sandra,bathroom),12).
% #example not holdsAt(location(sandra,hallway),12).

:-holdsAt(location(sandra,hallway),12).

%%% C. Compression
{ use_clause_literal(V1,0) }:-clause(V1).
{ use_clause_literal(V1,V2) }:-clause(V1),literal(V1,V2).
% terminatedAt(location(V1,V2),V3).
clause(0).
clause_level(0,0):-use_clause_literal(0,0).
#minimize[ use_clause_literal(0,0) =1 @1 ].
terminatedAt(location(V1,V2),V3):-use_clause_literal(0,0),arg1(V1),arg2(V2),time(V3).
% initiatedAt(location(V1,V2),V3):-happensAt(travel(V1,V2),V3).
clause(1).
literal(1,1).
:-not clause_level(1,0),clause_level(1,1).
clause_level(1,0):-use_clause_literal(1,0).
clause_level(1,1):-use_clause_literal(1,1).
#minimize[ use_clause_literal(1,0) =1 @1 ].
#minimize[ use_clause_literal(1,1) =1 @1 ].
initiatedAt(location(V1,V2),V3):-use_clause_literal(1,0),try_clause_literal(1,1,V1,V2,V3),arg1(V1),arg2(V2),time(V3).
try_clause_literal(1,1,V1,V2,V3):-use_clause_literal(1,1),happensAt(travel(V1,V2),V3),arg1(V1),arg2(V2),time(V3).
try_clause_literal(1,1,V1,V2,V3):-not use_clause_literal(1,1),arg1(V1),arg2(V2),time(V3).
% initiatedAt(location(V1,V2),V3):-happensAt(move(V1,V2),V3).
clause(2).
literal(2,1).
:-not clause_level(2,0),clause_level(2,1).
clause_level(2,0):-use_clause_literal(2,0).
clause_level(2,1):-use_clause_literal(2,1).
#minimize[ use_clause_literal(2,0) =1 @1 ].
#minimize[ use_clause_literal(2,1) =1 @1 ].
initiatedAt(location(V1,V2),V3):-use_clause_literal(2,0),try_clause_literal(2,1,V1,V2,V3),arg1(V1),arg2(V2),time(V3).
try_clause_literal(2,1,V1,V2,V3):-use_clause_literal(2,1),happensAt(move(V1,V2),V3),arg1(V1),arg2(V2),time(V3).
try_clause_literal(2,1,V1,V2,V3):-not use_clause_literal(2,1),arg1(V1),arg2(V2),time(V3).
% initiatedAt(location(V1,V2),V3):-happensAt(move(V1,V4),V3),neq(V4,V2),neq(V2,V4).
clause(3).
literal(3,1).
literal(3,2).
literal(3,3).
:-not clause_level(3,0),clause_level(3,1).
clause_level(3,0):-use_clause_literal(3,0).
clause_level(3,1):-use_clause_literal(3,1).
clause_level(3,1):-use_clause_literal(3,2).
clause_level(3,1):-use_clause_literal(3,3).
#minimize[ use_clause_literal(3,0) =1 @1 ].
#minimize[ use_clause_literal(3,1) =1 @1 ].
#minimize[ use_clause_literal(3,2) =1 @1 ].
#minimize[ use_clause_literal(3,3) =1 @1 ].
initiatedAt(location(V1,V2),V3):-use_clause_literal(3,0),try_clause_literal(3,1,V1,V4,V3),try_clause_literal(3,2,V4,V2),try_clause_literal(3,3,V2,V4),arg1(V1),arg2(V2),time(V3),arg2(V4).
try_clause_literal(3,1,V1,V4,V3):-use_clause_literal(3,1),happensAt(move(V1,V4),V3),arg1(V1),arg2(V4),time(V3).
try_clause_literal(3,1,V1,V4,V3):-not use_clause_literal(3,1),arg1(V1),arg2(V4),time(V3).
try_clause_literal(3,2,V4,V2):-use_clause_literal(3,2),neq(V4,V2),arg2(V4),arg2(V2).
try_clause_literal(3,2,V4,V2):-not use_clause_literal(3,2),arg2(V4),arg2(V2).
try_clause_literal(3,3,V2,V4):-use_clause_literal(3,3),neq(V2,V4),arg2(V2),arg2(V4).
try_clause_literal(3,3,V2,V4):-not use_clause_literal(3,3),arg2(V2),arg2(V4).
% initiatedAt(location(V1,V2),V3).
clause(4).
clause_level(4,0):-use_clause_literal(4,0).
#minimize[ use_clause_literal(4,0) =1 @1 ].
initiatedAt(location(V1,V2),V3):-use_clause_literal(4,0),arg1(V1),arg2(V2),time(V3).

