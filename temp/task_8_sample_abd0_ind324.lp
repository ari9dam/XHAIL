#hide.
#show holdsAt/2.
#show use_clause_literal/2.

%%% B. Background
time(1..17).
arg3(apple;milk;football).
arg2(hallway;garden;office;kitchen;bathroom;bedroom).
arg1(daniel;sandra;mary;john).
fluent(carrying(X,Y)):-arg1(X),arg3(Y).
holdsAt(F,T+1):-fluent(F),time(T),initiatedAt(F,T).
holdsAt(F,T+1):-fluent(F),time(T),holdsAt(F,T),not terminatedAt(F,T).
happensAt(move(mary,bathroom),1).
happensAt(journey(sandra,bedroom),2).
happensAt(get(mary,football),3).
happensAt(go(john,kitchen),4).
happensAt(go(john,bedroom),6).
happensAt(drop(mary,football),7).
happensAt(take(mary,football),9).
happensAt(go_back(sandra,office),10).
happensAt(get(sandra,milk),12).
happensAt(go(mary,bedroom),13).
happensAt(move(sandra,garden),15).
happensAt(journey(daniel,hallway),16).

%%% E. Examples
% #example holdsAt(carrying(mary,football),5).

:-not holdsAt(carrying(mary,football),5).
% #example not holdsAt(carrying(mary,football),8).

:-holdsAt(carrying(mary,football),8).
% #example holdsAt(carrying(mary,football),11).

:-not holdsAt(carrying(mary,football),11).
% #example holdsAt(carrying(sandra,milk),14).

:-not holdsAt(carrying(sandra,milk),14).
% #example not holdsAt(carrying(sandra,football),14).

:-holdsAt(carrying(sandra,football),14).
% #example holdsAt(carrying(sandra,milk),17).

:-not holdsAt(carrying(sandra,milk),17).
% #example not holdsAt(carrying(sandra,football),17).

:-holdsAt(carrying(sandra,football),17).

%%% C. Compression
{ use_clause_literal(V1,0) }:-clause(V1).
{ use_clause_literal(V1,V2) }:-clause(V1),literal(V1,V2).
% initiatedAt(carrying(V1,V2),V3).
clause(0).
clause_level(0,0):-use_clause_literal(0,0).
#minimize[ use_clause_literal(0,0) =1 @1 ].
initiatedAt(carrying(V1,V2),V3):-use_clause_literal(0,0),arg1(V1),arg3(V2),time(V3).
% initiatedAt(carrying(V1,V2),V3):-happensAt(get(V1,V2),V3).
clause(1).
literal(1,1).
:-not clause_level(1,0),clause_level(1,1).
clause_level(1,0):-use_clause_literal(1,0).
clause_level(1,1):-use_clause_literal(1,1).
#minimize[ use_clause_literal(1,0) =1 @1 ].
#minimize[ use_clause_literal(1,1) =1 @1 ].
initiatedAt(carrying(V1,V2),V3):-use_clause_literal(1,0),try_clause_literal(1,1,V1,V2,V3),arg1(V1),arg3(V2),time(V3).
try_clause_literal(1,1,V1,V2,V3):-use_clause_literal(1,1),happensAt(get(V1,V2),V3),arg1(V1),arg3(V2),time(V3).
try_clause_literal(1,1,V1,V2,V3):-not use_clause_literal(1,1),arg1(V1),arg3(V2),time(V3).
% initiatedAt(carrying(V1,V2),V3):-happensAt(take(V1,V2),V3).
clause(2).
literal(2,1).
:-not clause_level(2,0),clause_level(2,1).
clause_level(2,0):-use_clause_literal(2,0).
clause_level(2,1):-use_clause_literal(2,1).
#minimize[ use_clause_literal(2,0) =1 @1 ].
#minimize[ use_clause_literal(2,1) =1 @1 ].
initiatedAt(carrying(V1,V2),V3):-use_clause_literal(2,0),try_clause_literal(2,1,V1,V2,V3),arg1(V1),arg3(V2),time(V3).
try_clause_literal(2,1,V1,V2,V3):-use_clause_literal(2,1),happensAt(take(V1,V2),V3),arg1(V1),arg3(V2),time(V3).
try_clause_literal(2,1,V1,V2,V3):-not use_clause_literal(2,1),arg1(V1),arg3(V2),time(V3).
% terminatedAt(carrying(V1,V2),V3):-happensAt(drop(V1,V2),V3).
clause(3).
literal(3,1).
:-not clause_level(3,0),clause_level(3,1).
clause_level(3,0):-use_clause_literal(3,0).
clause_level(3,1):-use_clause_literal(3,1).
#minimize[ use_clause_literal(3,0) =1 @1 ].
#minimize[ use_clause_literal(3,1) =1 @1 ].
terminatedAt(carrying(V1,V2),V3):-use_clause_literal(3,0),try_clause_literal(3,1,V1,V2,V3),arg1(V1),arg3(V2),time(V3).
try_clause_literal(3,1,V1,V2,V3):-use_clause_literal(3,1),happensAt(drop(V1,V2),V3),arg1(V1),arg3(V2),time(V3).
try_clause_literal(3,1,V1,V2,V3):-not use_clause_literal(3,1),arg1(V1),arg3(V2),time(V3).

