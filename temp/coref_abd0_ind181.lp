#hide.
#show holdsAt/2.
#show use_clause_literal/2.

%%% B. Background
time(1..15).
id(1..15).
arg2(hallway;garden;office;kitchen;bathroom;bedroom).
arg1(daniel;sandra;mary;john).
fluent(location(X,Y)):-arg1(X),arg2(Y).
fluent(coref(X,Y)):-id(X),arg1(Y).
holdsAt(F,T+1):-fluent(F),time(T),initiatedAt(F,T).
holdsAt(F,T+1):-fluent(F),time(T),holdsAt(F,T),not terminatedAt(F,T).
terminatedAt(location(V1,V2),V3):-happensAt(travel(V1,V4),V3),arg1(V1),arg2(V4),time(V3),arg2(V2).
initiatedAt(location(V1,V2),V3):-happensAt(travel(V1,V2),V3),arg1(V1),arg2(V2),time(V3).
terminatedAt(location(V1,V2),V3):-happensAt(go(V1,V4),V3),arg1(V1),arg2(V4),time(V3),arg2(V2).
initiatedAt(location(V1,V2),V3):-happensAt(go(V1,V2),V3),arg1(V1),arg2(V2),time(V3).
terminatedAt(location(V1,V2),V3):-happensAt(go_back(V1,V4),V3),arg1(V1),arg2(V4),time(V3),arg2(V2).
initiatedAt(location(V1,V2),V3):-happensAt(go_back(V1,V2),V3),arg1(V1),arg2(V2),time(V3).
terminatedAt(location(V1,V2),V3):-happensAt(move(V1,V4),V3),arg1(V1),arg2(V4),time(V3),arg2(V2).
initiatedAt(location(V1,V2),V3):-happensAt(move(V1,V2),V3),arg1(V1),arg2(V2),time(V3).
terminatedAt(location(V1,V2),V3):-happensAt(journey(V1,V4),V3),arg1(V1),arg2(V4),time(V3),arg2(V2).
initiatedAt(location(V1,V2),V3):-happensAt(journey(V1,V2),V3),arg1(V1),arg2(V2),time(V3).
happensAt(go(mary,bathroom),1).
happensAt(go(daniel,bathroom),1).
happensAt(journey(X,hallway),2):-holdsAt(coref(2,X),2),arg1(X).
happensAt(move(sandra,kitchen),4).
happensAt(move(john,kitchen),4).
happensAt(go(X,hallway),5):-holdsAt(coref(5,X),5),arg1(X).
happensAt(journey(sandra,office),7).
happensAt(journey(daniel,office),7).
happensAt(move(X,bedroom),8):-holdsAt(coref(8,X),8),arg1(X).
happensAt(journey(mary,office),10).
happensAt(journey(daniel,office),10).
happensAt(move(X,hallway),11):-holdsAt(coref(11,X),11),arg1(X).
happensAt(journey(mary,office),13).
happensAt(journey(daniel,office),13).
happensAt(move(X,bathroom),14):-holdsAt(coref(14,X),14),arg1(X).

%%% E. Examples
% #example holdsAt(location(daniel,hallway),3).

:-not holdsAt(location(daniel,hallway),3).
% #example holdsAt(location(john,hallway),6).

:-not holdsAt(location(john,hallway),6).
% #example holdsAt(location(john,hallway),9).

:-not holdsAt(location(john,hallway),9).
% #example holdsAt(location(sandra,bedroom),12).

:-not holdsAt(location(sandra,bedroom),12).
% #example holdsAt(location(mary,bathroom),15).

:-not holdsAt(location(mary,bathroom),15).

%%% C. Compression
{ use_clause_literal(V1,0) }:-clause(V1).
{ use_clause_literal(V1,V2) }:-clause(V1),literal(V1,V2).
% initiatedAt(coref(V1,V2),V3):-happensAt(move(V2,V4),V1),happensAt(go(V2,V4),V3).
clause(0).
literal(0,1).
literal(0,2).
:-not clause_level(0,0),clause_level(0,1).
clause_level(0,0):-use_clause_literal(0,0).
clause_level(0,1):-use_clause_literal(0,1).
clause_level(0,1):-use_clause_literal(0,2).
#minimize[ use_clause_literal(0,0) =1 @1 ].
#minimize[ use_clause_literal(0,1) =1 @1 ].
#minimize[ use_clause_literal(0,2) =1 @1 ].
initiatedAt(coref(V1,V2),V3):-use_clause_literal(0,0),try_clause_literal(0,1,V2,V4,V1),try_clause_literal(0,2,V2,V4,V3),id(V1),arg1(V2),time(V3),arg2(V4).
try_clause_literal(0,1,V2,V4,V1):-use_clause_literal(0,1),happensAt(move(V2,V4),V1),arg1(V2),arg2(V4),id(V1).
try_clause_literal(0,1,V2,V4,V1):-not use_clause_literal(0,1),arg1(V2),arg2(V4),id(V1).
try_clause_literal(0,2,V2,V4,V3):-use_clause_literal(0,2),happensAt(go(V2,V4),V3),arg1(V2),arg2(V4),time(V3).
try_clause_literal(0,2,V2,V4,V3):-not use_clause_literal(0,2),arg1(V2),arg2(V4),time(V3).
% initiatedAt(coref(V1,V2),V3):-happensAt(journey(V2,V4),V1),happensAt(go(V2,V5),V3).
clause(1).
literal(1,1).
literal(1,2).
:-not clause_level(1,0),clause_level(1,1).
clause_level(1,0):-use_clause_literal(1,0).
clause_level(1,1):-use_clause_literal(1,1).
clause_level(1,1):-use_clause_literal(1,2).
#minimize[ use_clause_literal(1,0) =1 @1 ].
#minimize[ use_clause_literal(1,1) =1 @1 ].
#minimize[ use_clause_literal(1,2) =1 @1 ].
initiatedAt(coref(V1,V2),V3):-use_clause_literal(1,0),try_clause_literal(1,1,V2,V4,V1),try_clause_literal(1,2,V2,V5,V3),id(V1),arg1(V2),time(V3),arg2(V4),arg2(V5).
try_clause_literal(1,1,V2,V4,V1):-use_clause_literal(1,1),happensAt(journey(V2,V4),V1),arg1(V2),arg2(V4),id(V1).
try_clause_literal(1,1,V2,V4,V1):-not use_clause_literal(1,1),arg1(V2),arg2(V4),id(V1).
try_clause_literal(1,2,V2,V5,V3):-use_clause_literal(1,2),happensAt(go(V2,V5),V3),arg1(V2),arg2(V5),time(V3).
try_clause_literal(1,2,V2,V5,V3):-not use_clause_literal(1,2),arg1(V2),arg2(V5),time(V3).
% initiatedAt(coref(V1,V2),V3):-happensAt(move(V2,V4),V3),happensAt(move(V2,V5),V1).
clause(2).
literal(2,1).
literal(2,2).
:-not clause_level(2,0),clause_level(2,1).
clause_level(2,0):-use_clause_literal(2,0).
clause_level(2,1):-use_clause_literal(2,1).
clause_level(2,1):-use_clause_literal(2,2).
#minimize[ use_clause_literal(2,0) =1 @1 ].
#minimize[ use_clause_literal(2,1) =1 @1 ].
#minimize[ use_clause_literal(2,2) =1 @1 ].
initiatedAt(coref(V1,V2),V3):-use_clause_literal(2,0),try_clause_literal(2,1,V2,V4,V3),try_clause_literal(2,2,V2,V5,V1),id(V1),arg1(V2),time(V3),arg2(V4),arg2(V5).
try_clause_literal(2,1,V2,V4,V3):-use_clause_literal(2,1),happensAt(move(V2,V4),V3),arg1(V2),arg2(V4),time(V3).
try_clause_literal(2,1,V2,V4,V3):-not use_clause_literal(2,1),arg1(V2),arg2(V4),time(V3).
try_clause_literal(2,2,V2,V5,V1):-use_clause_literal(2,2),happensAt(move(V2,V5),V1),arg1(V2),arg2(V5),id(V1).
try_clause_literal(2,2,V2,V5,V1):-not use_clause_literal(2,2),arg1(V2),arg2(V5),id(V1).
% initiatedAt(coref(V1,V2),V3):-happensAt(go(V2,V4),V1).
clause(3).
literal(3,1).
:-not clause_level(3,0),clause_level(3,1).
clause_level(3,0):-use_clause_literal(3,0).
clause_level(3,1):-use_clause_literal(3,1).
#minimize[ use_clause_literal(3,0) =1 @1 ].
#minimize[ use_clause_literal(3,1) =1 @1 ].
initiatedAt(coref(V1,V2),V3):-use_clause_literal(3,0),try_clause_literal(3,1,V2,V4,V1),id(V1),arg1(V2),time(V3),arg2(V4).
try_clause_literal(3,1,V2,V4,V1):-use_clause_literal(3,1),happensAt(go(V2,V4),V1),arg1(V2),arg2(V4),id(V1).
try_clause_literal(3,1,V2,V4,V1):-not use_clause_literal(3,1),arg1(V2),arg2(V4),id(V1).

