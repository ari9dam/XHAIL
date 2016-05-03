#hide.
#show holdsAt/2.
#show use_clause_literal/2.

%%% B. Background
arg2(hallway;garden;bedroom;tv).
direction(north;south;east;west).
time(0).
fluent(relative_location(X,Y,Z)):-arg2(X),arg2(Y),direction(Z).
holdsAt(F,T+1):-fluent(F),time(T),initiatedAt(F,T).
holdsAt(F,T+1):-fluent(F),time(T),holdsAt(F,T),not terminatedAt(F,T).
holdsAt(relative_location(hallway,garden,north),0).
holdsAt(relative_location(hallway,bedroom,south),0).
holdsAt(relative_location(bedroom,garden,west),0).
holdsAt(relative_location(bedroom,tv,east),0).

%%% E. Examples
% #example holdsAt(relative_location(garden,hallway,south),0).

:-not holdsAt(relative_location(garden,hallway,south),0).
% #example not holdsAt(relative_location(garden,hallway,north),0).

:-holdsAt(relative_location(garden,hallway,north),0).
% #example not holdsAt(relative_location(garden,hallway,east),0).

:-holdsAt(relative_location(garden,hallway,east),0).
% #example not holdsAt(relative_location(garden,hallway,west),0).

:-holdsAt(relative_location(garden,hallway,west),0).
% #example holdsAt(relative_location(bedroom,hallway,north),0).

:-not holdsAt(relative_location(bedroom,hallway,north),0).
% #example not holdsAt(relative_location(bedroom,hallway,east),0).

:-holdsAt(relative_location(bedroom,hallway,east),0).
% #example not holdsAt(relative_location(bedroom,hallway,south),0).

:-holdsAt(relative_location(bedroom,hallway,south),0).
% #example not holdsAt(relative_location(bedroom,hallway,west),0).

:-holdsAt(relative_location(bedroom,hallway,west),0).
% #example holdsAt(relative_location(garden,bedroom,east),0).

:-not holdsAt(relative_location(garden,bedroom,east),0).
% #example not holdsAt(relative_location(garden,bedroom,west),0).

:-holdsAt(relative_location(garden,bedroom,west),0).
% #example not holdsAt(relative_location(garden,bedroom,south),0).

:-holdsAt(relative_location(garden,bedroom,south),0).
% #example not holdsAt(relative_location(garden,bedroom,north),0).

:-holdsAt(relative_location(garden,bedroom,north),0).
% #example holdsAt(relative_location(tv,bedroom,west),0).

:-not holdsAt(relative_location(tv,bedroom,west),0).
% #example not holdsAt(relative_location(tv,bedroom,east),0).

:-holdsAt(relative_location(tv,bedroom,east),0).
% #example not holdsAt(relative_location(tv,bedroom,south),0).

:-holdsAt(relative_location(tv,bedroom,south),0).
% #example not holdsAt(relative_location(tv,bedroom,north),0).

:-holdsAt(relative_location(tv,bedroom,north),0).

%%% C. Compression
{ use_clause_literal(V1,0) }:-clause(V1).
{ use_clause_literal(V1,V2) }:-clause(V1),literal(V1,V2).
% holdsAt(relative_location(V1,V2,west),V3):-holdsAt(relative_location(V1,V2,west),V3),holdsAt(relative_location(V2,V1,east),V3).
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
holdsAt(relative_location(V1,V2,west),V3):-use_clause_literal(0,0),try_clause_literal(0,1,V1,V2,V3),try_clause_literal(0,2,V2,V1,V3),arg2(V1),arg2(V2),time(V3).
try_clause_literal(0,1,V1,V2,V3):-use_clause_literal(0,1),holdsAt(relative_location(V1,V2,west),V3),arg2(V1),arg2(V2),time(V3).
try_clause_literal(0,1,V1,V2,V3):-not use_clause_literal(0,1),arg2(V1),arg2(V2),time(V3).
try_clause_literal(0,2,V2,V1,V3):-use_clause_literal(0,2),holdsAt(relative_location(V2,V1,east),V3),arg2(V2),arg2(V1),time(V3).
try_clause_literal(0,2,V2,V1,V3):-not use_clause_literal(0,2),arg2(V2),arg2(V1),time(V3).
% holdsAt(relative_location(V1,V2,east),V3):-holdsAt(relative_location(V2,V1,west),V3),holdsAt(relative_location(V1,V2,east),V3).
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
holdsAt(relative_location(V1,V2,east),V3):-use_clause_literal(1,0),try_clause_literal(1,1,V2,V1,V3),try_clause_literal(1,2,V1,V2,V3),arg2(V1),arg2(V2),time(V3).
try_clause_literal(1,1,V2,V1,V3):-use_clause_literal(1,1),holdsAt(relative_location(V2,V1,west),V3),arg2(V2),arg2(V1),time(V3).
try_clause_literal(1,1,V2,V1,V3):-not use_clause_literal(1,1),arg2(V2),arg2(V1),time(V3).
try_clause_literal(1,2,V1,V2,V3):-use_clause_literal(1,2),holdsAt(relative_location(V1,V2,east),V3),arg2(V1),arg2(V2),time(V3).
try_clause_literal(1,2,V1,V2,V3):-not use_clause_literal(1,2),arg2(V1),arg2(V2),time(V3).
% holdsAt(relative_location(V1,V2,south),V3):-holdsAt(relative_location(V1,V2,south),V3),holdsAt(relative_location(V2,V1,north),V3).
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
holdsAt(relative_location(V1,V2,south),V3):-use_clause_literal(2,0),try_clause_literal(2,1,V1,V2,V3),try_clause_literal(2,2,V2,V1,V3),arg2(V1),arg2(V2),time(V3).
try_clause_literal(2,1,V1,V2,V3):-use_clause_literal(2,1),holdsAt(relative_location(V1,V2,south),V3),arg2(V1),arg2(V2),time(V3).
try_clause_literal(2,1,V1,V2,V3):-not use_clause_literal(2,1),arg2(V1),arg2(V2),time(V3).
try_clause_literal(2,2,V2,V1,V3):-use_clause_literal(2,2),holdsAt(relative_location(V2,V1,north),V3),arg2(V2),arg2(V1),time(V3).
try_clause_literal(2,2,V2,V1,V3):-not use_clause_literal(2,2),arg2(V2),arg2(V1),time(V3).
% holdsAt(relative_location(V1,V2,north),V3):-holdsAt(relative_location(V2,V1,south),V3),holdsAt(relative_location(V1,V2,north),V3).
clause(3).
literal(3,1).
literal(3,2).
:-not clause_level(3,0),clause_level(3,1).
clause_level(3,0):-use_clause_literal(3,0).
clause_level(3,1):-use_clause_literal(3,1).
clause_level(3,1):-use_clause_literal(3,2).
#minimize[ use_clause_literal(3,0) =1 @1 ].
#minimize[ use_clause_literal(3,1) =1 @1 ].
#minimize[ use_clause_literal(3,2) =1 @1 ].
holdsAt(relative_location(V1,V2,north),V3):-use_clause_literal(3,0),try_clause_literal(3,1,V2,V1,V3),try_clause_literal(3,2,V1,V2,V3),arg2(V1),arg2(V2),time(V3).
try_clause_literal(3,1,V2,V1,V3):-use_clause_literal(3,1),holdsAt(relative_location(V2,V1,south),V3),arg2(V2),arg2(V1),time(V3).
try_clause_literal(3,1,V2,V1,V3):-not use_clause_literal(3,1),arg2(V2),arg2(V1),time(V3).
try_clause_literal(3,2,V1,V2,V3):-use_clause_literal(3,2),holdsAt(relative_location(V1,V2,north),V3),arg2(V1),arg2(V2),time(V3).
try_clause_literal(3,2,V1,V2,V3):-not use_clause_literal(3,2),arg2(V1),arg2(V2),time(V3).

