#hide.
#show holdsAt/2.
#show use_clause_literal/2.

%%% B. Background
time(1..16).
arg2(hallway;garden;office;bathroom;bedroom).
arg1(daniel;sandra;mary;john).
direction(east).
happensAt(move(mary,bathroom),1).
happensAt(go(john,hallway),2).
happensAt(go_back(daniel,hallway),4).
happensAt(move(sandra,garden),5).
happensAt(move(john,office),7).
happensAt(journey(sandra,bathroom),8).
happensAt(move(mary,hallway),10).
happensAt(travel(daniel,office),11).
happensAt(go_back(john,garden),13).
happensAt(move(john,bedroom),14).
fluent(location(X,Y)):-arg1(X),arg2(Y).
holdsAt(F,T+1):-fluent(F),time(T),initiatedAt(F,T).
holdsAt(F,T+1):-fluent(F),time(T),holdsAt(F,T),not terminatedAt(F,T).
neq(X,Y):-arg2(X),arg2(Y),X!=Y.

%%% E. Examples
% #example holdsAt(location(mary,bathroom),3).

:-not holdsAt(location(mary,bathroom),3).
% #example not holdsAt(location(mary,hallway),3).

:-holdsAt(location(mary,hallway),3).
% #example holdsAt(location(daniel,hallway),6).

:-not holdsAt(location(daniel,hallway),6).
% #example not holdsAt(location(daniel,garden),6).

:-holdsAt(location(daniel,garden),6).
% #example not holdsAt(location(daniel,bathroom),6).

:-holdsAt(location(daniel,bathroom),6).
% #example holdsAt(location(daniel,hallway),9).

:-not holdsAt(location(daniel,hallway),9).
% #example not holdsAt(location(daniel,garden),9).

:-holdsAt(location(daniel,garden),9).
% #example not holdsAt(location(daniel,office),9).

:-holdsAt(location(daniel,office),9).
% #example not holdsAt(location(daniel,bathroom),9).

:-holdsAt(location(daniel,bathroom),9).
% #example holdsAt(location(daniel,office),12).

:-not holdsAt(location(daniel,office),12).
% #example not holdsAt(location(daniel,hallway),12).

:-holdsAt(location(daniel,hallway),12).
% #example not holdsAt(location(daniel,garden),12).

:-holdsAt(location(daniel,garden),12).
% #example not holdsAt(location(daniel,bathroom),12).

:-holdsAt(location(daniel,bathroom),12).
% #example holdsAt(location(sandra,bathroom),15).

:-not holdsAt(location(sandra,bathroom),15).
% #example not holdsAt(location(sandra,hallway),15).

:-holdsAt(location(sandra,hallway),15).
% #example not holdsAt(location(sandra,garden),15).

:-holdsAt(location(sandra,garden),15).
% #example not holdsAt(location(sandra,office),15).

:-holdsAt(location(sandra,office),15).
% #example not holdsAt(location(sandra,bedroom),15).

:-holdsAt(location(sandra,bedroom),15).

%%% C. Compression
{ use_clause_literal(V1,0) }:-clause(V1).
{ use_clause_literal(V1,V2) }:-clause(V1),literal(V1,V2).
% initiatedAt(location(V1,V2),V3):-happensAt(journey(V1,V2),V3).
clause(0).
literal(0,1).
:-not clause_level(0,0),clause_level(0,1).
clause_level(0,0):-use_clause_literal(0,0).
clause_level(0,1):-use_clause_literal(0,1).
#minimize[ use_clause_literal(0,0) =1 @1 ].
#minimize[ use_clause_literal(0,1) =1 @1 ].
initiatedAt(location(V1,V2),V3):-use_clause_literal(0,0),try_clause_literal(0,1,V1,V2,V3),arg1(V1),arg2(V2),time(V3).
try_clause_literal(0,1,V1,V2,V3):-use_clause_literal(0,1),happensAt(journey(V1,V2),V3),arg1(V1),arg2(V2),time(V3).
try_clause_literal(0,1,V1,V2,V3):-not use_clause_literal(0,1),arg1(V1),arg2(V2),time(V3).
% initiatedAt(location(V1,V2),V3).
clause(1).
clause_level(1,0):-use_clause_literal(1,0).
#minimize[ use_clause_literal(1,0) =1 @1 ].
initiatedAt(location(V1,V2),V3):-use_clause_literal(1,0),arg1(V1),arg2(V2),time(V3).
% terminatedAt(location(V1,V2),V3):-happensAt(travel(V1,V4),V3),neq(V2,V4),neq(V4,V2).
clause(2).
literal(2,1).
literal(2,2).
literal(2,3).
:-not clause_level(2,0),clause_level(2,1).
clause_level(2,0):-use_clause_literal(2,0).
clause_level(2,1):-use_clause_literal(2,1).
clause_level(2,1):-use_clause_literal(2,2).
clause_level(2,1):-use_clause_literal(2,3).
#minimize[ use_clause_literal(2,0) =1 @1 ].
#minimize[ use_clause_literal(2,1) =1 @1 ].
#minimize[ use_clause_literal(2,2) =1 @1 ].
#minimize[ use_clause_literal(2,3) =1 @1 ].
terminatedAt(location(V1,V2),V3):-use_clause_literal(2,0),try_clause_literal(2,1,V1,V4,V3),try_clause_literal(2,2,V2,V4),try_clause_literal(2,3,V4,V2),arg1(V1),arg2(V2),time(V3),arg2(V4).
try_clause_literal(2,1,V1,V4,V3):-use_clause_literal(2,1),happensAt(travel(V1,V4),V3),arg1(V1),arg2(V4),time(V3).
try_clause_literal(2,1,V1,V4,V3):-not use_clause_literal(2,1),arg1(V1),arg2(V4),time(V3).
try_clause_literal(2,2,V2,V4):-use_clause_literal(2,2),neq(V2,V4),arg2(V2),arg2(V4).
try_clause_literal(2,2,V2,V4):-not use_clause_literal(2,2),arg2(V2),arg2(V4).
try_clause_literal(2,3,V4,V2):-use_clause_literal(2,3),neq(V4,V2),arg2(V4),arg2(V2).
try_clause_literal(2,3,V4,V2):-not use_clause_literal(2,3),arg2(V4),arg2(V2).
% initiatedAt(location(V1,V2),V3):-happensAt(go_back(V1,V2),V3).
clause(3).
literal(3,1).
:-not clause_level(3,0),clause_level(3,1).
clause_level(3,0):-use_clause_literal(3,0).
clause_level(3,1):-use_clause_literal(3,1).
#minimize[ use_clause_literal(3,0) =1 @1 ].
#minimize[ use_clause_literal(3,1) =1 @1 ].
initiatedAt(location(V1,V2),V3):-use_clause_literal(3,0),try_clause_literal(3,1,V1,V2,V3),arg1(V1),arg2(V2),time(V3).
try_clause_literal(3,1,V1,V2,V3):-use_clause_literal(3,1),happensAt(go_back(V1,V2),V3),arg1(V1),arg2(V2),time(V3).
try_clause_literal(3,1,V1,V2,V3):-not use_clause_literal(3,1),arg1(V1),arg2(V2),time(V3).
% initiatedAt(location(V1,V2),V3):-happensAt(move(V1,V2),V3).
clause(4).
literal(4,1).
:-not clause_level(4,0),clause_level(4,1).
clause_level(4,0):-use_clause_literal(4,0).
clause_level(4,1):-use_clause_literal(4,1).
#minimize[ use_clause_literal(4,0) =1 @1 ].
#minimize[ use_clause_literal(4,1) =1 @1 ].
initiatedAt(location(V1,V2),V3):-use_clause_literal(4,0),try_clause_literal(4,1,V1,V2,V3),arg1(V1),arg2(V2),time(V3).
try_clause_literal(4,1,V1,V2,V3):-use_clause_literal(4,1),happensAt(move(V1,V2),V3),arg1(V1),arg2(V2),time(V3).
try_clause_literal(4,1,V1,V2,V3):-not use_clause_literal(4,1),arg1(V1),arg2(V2),time(V3).

