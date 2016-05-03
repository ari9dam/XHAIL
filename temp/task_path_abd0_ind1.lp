#hide.
#show holdsAt/2.
#show use_clause_literal/2.

%%% B. Background
arg2(hallway;garden;bedroom;office;kitchen;bathroom).
direction(north;south;east;west).
time(1..4).
fluent(relative_location(X,Y,Z)):-arg2(X),arg2(Y),direction(Z).
fluent(location(X)):-arg2(X).
holdsAt(F,T+1):-fluent(F),time(T),initiatedAt(F,T).
holdsAt(F,T+1):-fluent(F),time(T),holdsAt(F,T),not terminatedAt(F,T).
holdsAt(relative_location(V1,V2,west),V3):-holdsAt(relative_location(V2,V1,east),V3),arg2(V2),arg2(V1),time(V3).
holdsAt(relative_location(V1,V2,east),V3):-holdsAt(relative_location(V2,V1,west),V3),arg2(V2),arg2(V1),time(V3).
holdsAt(relative_location(V1,V2,north),V3):-holdsAt(relative_location(V2,V1,south),V3),arg2(V2),arg2(V1),time(V3).
holdsAt(relative_location(V1,V2,south),V3):-holdsAt(relative_location(V2,V1,north),V3),arg2(V2),arg2(V1),time(V3).
holdsAt(relative_location(office,hallway,east),1).
holdsAt(relative_location(kitchen,office,north),1).
holdsAt(relative_location(garden,bedroom,west),1).
holdsAt(relative_location(office,garden,west),1).
holdsAt(relative_location(bathroom,garden,north),1).
holdsAt(location(kitchen),1).
happensAt(move(south),1).
happensAt(move(east),2).
atleast_one(T):-holdsAt(location(X),T),arg2(X),time(T).
:-not atleast_one(T),time(T).
:-holdsAt(location(X),T),holdsAt(location(Y),T),X!=Y,arg2(X),arg2(Y).

%%% E. Examples
% #example holdsAt(location(garden),4).

:-not holdsAt(location(garden),4).
% #example holdsAt(location(garden),3).

:-not holdsAt(location(garden),3).
% #example not holdsAt(location(office),3).

:-holdsAt(location(office),3).
% #example not holdsAt(location(bathroom),3).

:-holdsAt(location(bathroom),3).
% #example not holdsAt(location(hallway),3).

:-holdsAt(location(hallway),3).
% #example not holdsAt(location(kitchen),3).

:-holdsAt(location(kitchen),3).
% #example not holdsAt(location(garden),1).

:-holdsAt(location(garden),1).
% #example not holdsAt(location(office),1).

:-holdsAt(location(office),1).
% #example not holdsAt(location(bathroom),1).

:-holdsAt(location(bathroom),1).
% #example not holdsAt(location(hallway),1).

:-holdsAt(location(hallway),1).
% #example not holdsAt(location(garden),2).

:-holdsAt(location(garden),2).
% #example not holdsAt(location(kitchen),2).

:-holdsAt(location(kitchen),2).

%%% C. Compression
{ use_clause_literal(V1,0) }:-clause(V1).
{ use_clause_literal(V1,V2) }:-clause(V1),literal(V1,V2).
% terminatedAt(location(V1),V2):-holdsAt(location(V1),V2),happensAt(move(V3),V2).
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
terminatedAt(location(V1),V2):-use_clause_literal(0,0),try_clause_literal(0,1,V1,V2),try_clause_literal(0,2,V3,V2),arg2(V1),time(V2),direction(V3).
try_clause_literal(0,1,V1,V2):-use_clause_literal(0,1),holdsAt(location(V1),V2),arg2(V1),time(V2).
try_clause_literal(0,1,V1,V2):-not use_clause_literal(0,1),arg2(V1),time(V2).
try_clause_literal(0,2,V3,V2):-use_clause_literal(0,2),happensAt(move(V3),V2),direction(V3),time(V2).
try_clause_literal(0,2,V3,V2):-not use_clause_literal(0,2),direction(V3),time(V2).
% initiatedAt(location(V1),V2):-holdsAt(location(V3),V2),happensAt(move(V4),V2).
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
initiatedAt(location(V1),V2):-use_clause_literal(1,0),try_clause_literal(1,1,V3,V2),try_clause_literal(1,2,V4,V2),arg2(V1),time(V2),arg2(V3),direction(V4).
try_clause_literal(1,1,V3,V2):-use_clause_literal(1,1),holdsAt(location(V3),V2),arg2(V3),time(V2).
try_clause_literal(1,1,V3,V2):-not use_clause_literal(1,1),arg2(V3),time(V2).
try_clause_literal(1,2,V4,V2):-use_clause_literal(1,2),happensAt(move(V4),V2),direction(V4),time(V2).
try_clause_literal(1,2,V4,V2):-not use_clause_literal(1,2),direction(V4),time(V2).
% initiatedAt(location(V1),V2):-holdsAt(location(V3),V2),happensAt(move(V4),V2),holdsAt(relative_location(V3,V1,V4),V2).
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
initiatedAt(location(V1),V2):-use_clause_literal(2,0),try_clause_literal(2,1,V3,V2),try_clause_literal(2,2,V4,V2),try_clause_literal(2,3,V3,V1,V4,V2),arg2(V1),time(V2),arg2(V3),direction(V4).
try_clause_literal(2,1,V3,V2):-use_clause_literal(2,1),holdsAt(location(V3),V2),arg2(V3),time(V2).
try_clause_literal(2,1,V3,V2):-not use_clause_literal(2,1),arg2(V3),time(V2).
try_clause_literal(2,2,V4,V2):-use_clause_literal(2,2),happensAt(move(V4),V2),direction(V4),time(V2).
try_clause_literal(2,2,V4,V2):-not use_clause_literal(2,2),direction(V4),time(V2).
try_clause_literal(2,3,V3,V1,V4,V2):-use_clause_literal(2,3),holdsAt(relative_location(V3,V1,V4),V2),arg2(V3),arg2(V1),direction(V4),time(V2).
try_clause_literal(2,3,V3,V1,V4,V2):-not use_clause_literal(2,3),arg2(V3),arg2(V1),direction(V4),time(V2).

