#hide.
#show holdsAt/2.
#show use_clause_literal/2.

%%% B. Background
time(1..12).
arg2(hallway;garden;office;kitchen;bathroom;bedroom).
arg1(you).
direction(east;south;north;west).
holdsAt(relative_position(office,bathroom,north),1).
holdsAt(relative_position(garden,office,east),1).
holdsAt(relative_position(garden,bedroom,west),1).
holdsAt(relative_position(bedroom,kitchen,north),1).
holdsAt(relative_position(hallway,bedroom,east),1).
holdsAt(location(you,office),6).
happensAt(mt(you,east),6).
happensAt(mt(you,east),7).
at_least_one(T):-holdsAt(location(you,X),T),time(T),arg2(X).
:-not at_least_one(T),time(T),T>5,T<9.
:-holdsAt(location(you,X),T),holdsAt(location(you,Y),T),X!=Y,arg2(X),arg2(Y),T>5,T<9,time(T).
:-holdsAt(location(you,X),T),holdsAt(location(you,X),T+1),arg2(X),T>5,T<8,time(T).
fluent(location(X,Y)):-arg1(X),arg2(Y).
fluent(relative_position(X,Y,D)):-arg2(X),arg2(Y),direction(D).
holdsAt(F,T+1):-fluent(F),time(T),initiatedAt(F,T).
holdsAt(F,T+1):-fluent(F),time(T),holdsAt(F,T),not terminatedAt(F,T).
holdsAt(relative_position(V1,V2,west),V3):-holdsAt(relative_position(V2,V1,east),V3),arg2(V2),arg2(V1),time(V3).
holdsAt(relative_position(V1,V2,east),V3):-holdsAt(relative_position(V2,V1,west),V3),arg2(V2),arg2(V1),time(V3).
holdsAt(relative_position(V1,V2,north),V3):-holdsAt(relative_position(V2,V1,south),V3),arg2(V2),arg2(V1),time(V3).
holdsAt(relative_position(V1,V2,south),V3):-holdsAt(relative_position(V2,V1,north),V3),arg2(V2),arg2(V1),time(V3).
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

%%% E. Examples
% #example not holdsAt(location(you,bedroom),6).

:-holdsAt(location(you,bedroom),6).
% #example holdsAt(location(you,bedroom),8).

:-not holdsAt(location(you,bedroom),8).
% #example holdsAt(location(you,bedroom),9).

:-not holdsAt(location(you,bedroom),9).

%%% C. Compression
{ use_clause_literal(V1,0) }:-clause(V1).
{ use_clause_literal(V1,V2) }:-clause(V1),literal(V1,V2).
% initiatedAt(location(V1,V2),V3):-holdsAt(location(V1,V4),V3),happensAt(mt(V1,V5),V3),holdsAt(relative_position(V2,V4,V5),V3).
clause(0).
literal(0,1).
literal(0,2).
literal(0,3).
:-not clause_level(0,0),clause_level(0,1).
clause_level(0,0):-use_clause_literal(0,0).
clause_level(0,1):-use_clause_literal(0,1).
clause_level(0,1):-use_clause_literal(0,2).
clause_level(0,1):-use_clause_literal(0,3).
#minimize[ use_clause_literal(0,0) =1 @1 ].
#minimize[ use_clause_literal(0,1) =1 @1 ].
#minimize[ use_clause_literal(0,2) =1 @1 ].
#minimize[ use_clause_literal(0,3) =1 @1 ].
initiatedAt(location(V1,V2),V3):-use_clause_literal(0,0),try_clause_literal(0,1,V1,V4,V3),try_clause_literal(0,2,V1,V5,V3),try_clause_literal(0,3,V2,V4,V5,V3),arg1(V1),arg2(V2),time(V3),arg2(V4),direction(V5).
try_clause_literal(0,1,V1,V4,V3):-use_clause_literal(0,1),holdsAt(location(V1,V4),V3),arg1(V1),arg2(V4),time(V3).
try_clause_literal(0,1,V1,V4,V3):-not use_clause_literal(0,1),arg1(V1),arg2(V4),time(V3).
try_clause_literal(0,2,V1,V5,V3):-use_clause_literal(0,2),happensAt(mt(V1,V5),V3),arg1(V1),direction(V5),time(V3).
try_clause_literal(0,2,V1,V5,V3):-not use_clause_literal(0,2),arg1(V1),direction(V5),time(V3).
try_clause_literal(0,3,V2,V4,V5,V3):-use_clause_literal(0,3),holdsAt(relative_position(V2,V4,V5),V3),arg2(V2),arg2(V4),direction(V5),time(V3).
try_clause_literal(0,3,V2,V4,V5,V3):-not use_clause_literal(0,3),arg2(V2),arg2(V4),direction(V5),time(V3).
% terminatedAt(location(V1,V2),V3):-holdsAt(location(V1,V2),V3),happensAt(mt(V1,V4),V3).
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
terminatedAt(location(V1,V2),V3):-use_clause_literal(1,0),try_clause_literal(1,1,V1,V2,V3),try_clause_literal(1,2,V1,V4,V3),arg1(V1),arg2(V2),time(V3),direction(V4).
try_clause_literal(1,1,V1,V2,V3):-use_clause_literal(1,1),holdsAt(location(V1,V2),V3),arg1(V1),arg2(V2),time(V3).
try_clause_literal(1,1,V1,V2,V3):-not use_clause_literal(1,1),arg1(V1),arg2(V2),time(V3).
try_clause_literal(1,2,V1,V4,V3):-use_clause_literal(1,2),happensAt(mt(V1,V4),V3),arg1(V1),direction(V4),time(V3).
try_clause_literal(1,2,V1,V4,V3):-not use_clause_literal(1,2),arg1(V1),direction(V4),time(V3).

