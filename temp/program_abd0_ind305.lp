#hide.
#show holdsAt/2.
#show use_clause_literal/2.

%%% B. Background
fluent(location(X,Y)):-arg1(X),arg2(Y).
holdsAt(F,T+1):-fluent(F),time(T),initiatedAt(F,T).
holdsAt(F,T+1):-fluent(F),time(T),holdsAt(F,T),not terminatedAt(F,T).
fluent(coref(X,Y)):-id(X),arg1(Y).
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
arg1(mary;daniel;john).
arg2(office;bathroom;bedroom;hallway;garden).
id(id2;id11;id14;id5;id8).
eventId(id2,1;;id5,4;;id11,10;;id14,13;;id8,7).
time(1..16).
happensAt(go_back(mary,bathroom),1).
happensAt(go(X,bedroom),2):-holdsAt(coref(id2,X),2),arg1(X).
happensAt(move(daniel,office),4).
happensAt(move(X,hallway),5):-holdsAt(coref(id5,X),5),arg1(X).
happensAt(travel(john,bathroom),7).
happensAt(journey(X,hallway),8):-holdsAt(coref(id8,X),8),arg1(X).
happensAt(move(mary,bathroom),10).
happensAt(go_back(X,bedroom),11):-holdsAt(coref(id11,X),11),arg1(X).
happensAt(go(mary,garden),13).
happensAt(go(X,office),14):-holdsAt(coref(id14,X),14),arg1(X).

%%% E. Examples
% #example holdsAt(location(mary,bedroom),3).

:-not holdsAt(location(mary,bedroom),3).
% #example not holdsAt(location(mary,bathroom),3).

:-holdsAt(location(mary,bathroom),3).
% #example holdsAt(location(daniel,hallway),6).

:-not holdsAt(location(daniel,hallway),6).
% #example not holdsAt(location(daniel,office),6).

:-holdsAt(location(daniel,office),6).
% #example not holdsAt(location(daniel,bathroom),6).

:-holdsAt(location(daniel,bathroom),6).
% #example not holdsAt(location(daniel,bedroom),6).

:-holdsAt(location(daniel,bedroom),6).
% #example holdsAt(location(daniel,hallway),9).

:-not holdsAt(location(daniel,hallway),9).
% #example not holdsAt(location(daniel,office),9).

:-holdsAt(location(daniel,office),9).
% #example not holdsAt(location(daniel,bathroom),9).

:-holdsAt(location(daniel,bathroom),9).
% #example not holdsAt(location(daniel,bedroom),9).

:-holdsAt(location(daniel,bedroom),9).
% #example holdsAt(location(mary,bedroom),12).

:-not holdsAt(location(mary,bedroom),12).
% #example not holdsAt(location(mary,hallway),12).

:-holdsAt(location(mary,hallway),12).
% #example not holdsAt(location(mary,office),12).

:-holdsAt(location(mary,office),12).
% #example not holdsAt(location(mary,bathroom),12).

:-holdsAt(location(mary,bathroom),12).
% #example holdsAt(location(mary,office),15).

:-not holdsAt(location(mary,office),15).
% #example not holdsAt(location(mary,hallway),15).

:-holdsAt(location(mary,hallway),15).
% #example not holdsAt(location(mary,garden),15).

:-holdsAt(location(mary,garden),15).
% #example not holdsAt(location(mary,bathroom),15).

:-holdsAt(location(mary,bathroom),15).
% #example not holdsAt(location(mary,bedroom),15).

:-holdsAt(location(mary,bedroom),15).

%%% C. Compression
{ use_clause_literal(V1,0) }:-clause(V1).
{ use_clause_literal(V1,V2) }:-clause(V1),literal(V1,V2).
% initiatedAt(coref(V1,V2),V3):-happensAt(go_back(V2,V4),V3).
clause(0).
literal(0,1).
:-not clause_level(0,0),clause_level(0,1).
clause_level(0,0):-use_clause_literal(0,0).
clause_level(0,1):-use_clause_literal(0,1).
#minimize[ use_clause_literal(0,0) =1 @1 ].
#minimize[ use_clause_literal(0,1) =1 @1 ].
initiatedAt(coref(V1,V2),V3):-use_clause_literal(0,0),try_clause_literal(0,1,V2,V4,V3),id(V1),arg1(V2),time(V3),arg2(V4).
try_clause_literal(0,1,V2,V4,V3):-use_clause_literal(0,1),happensAt(go_back(V2,V4),V3),arg1(V2),arg2(V4),time(V3).
try_clause_literal(0,1,V2,V4,V3):-not use_clause_literal(0,1),arg1(V2),arg2(V4),time(V3).
% initiatedAt(coref(V1,V2),V3):-happensAt(move(V2,V4),V3).
clause(1).
literal(1,1).
:-not clause_level(1,0),clause_level(1,1).
clause_level(1,0):-use_clause_literal(1,0).
clause_level(1,1):-use_clause_literal(1,1).
#minimize[ use_clause_literal(1,0) =1 @1 ].
#minimize[ use_clause_literal(1,1) =1 @1 ].
initiatedAt(coref(V1,V2),V3):-use_clause_literal(1,0),try_clause_literal(1,1,V2,V4,V3),id(V1),arg1(V2),time(V3),arg2(V4).
try_clause_literal(1,1,V2,V4,V3):-use_clause_literal(1,1),happensAt(move(V2,V4),V3),arg1(V2),arg2(V4),time(V3).
try_clause_literal(1,1,V2,V4,V3):-not use_clause_literal(1,1),arg1(V2),arg2(V4),time(V3).
% initiatedAt(coref(V1,V2),V3):-happensAt(go_back(V2,V4),V3),eventId(V1,V3).
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
initiatedAt(coref(V1,V2),V3):-use_clause_literal(2,0),try_clause_literal(2,1,V2,V4,V3),try_clause_literal(2,2,V1,V3),id(V1),arg1(V2),time(V3),arg2(V4).
try_clause_literal(2,1,V2,V4,V3):-use_clause_literal(2,1),happensAt(go_back(V2,V4),V3),arg1(V2),arg2(V4),time(V3).
try_clause_literal(2,1,V2,V4,V3):-not use_clause_literal(2,1),arg1(V2),arg2(V4),time(V3).
try_clause_literal(2,2,V1,V3):-use_clause_literal(2,2),eventId(V1,V3),id(V1),time(V3).
try_clause_literal(2,2,V1,V3):-not use_clause_literal(2,2),id(V1),time(V3).
% initiatedAt(coref(V1,V2),V3):-happensAt(move(V2,V4),V3),eventId(V1,V3).
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
initiatedAt(coref(V1,V2),V3):-use_clause_literal(3,0),try_clause_literal(3,1,V2,V4,V3),try_clause_literal(3,2,V1,V3),id(V1),arg1(V2),time(V3),arg2(V4).
try_clause_literal(3,1,V2,V4,V3):-use_clause_literal(3,1),happensAt(move(V2,V4),V3),arg1(V2),arg2(V4),time(V3).
try_clause_literal(3,1,V2,V4,V3):-not use_clause_literal(3,1),arg1(V2),arg2(V4),time(V3).
try_clause_literal(3,2,V1,V3):-use_clause_literal(3,2),eventId(V1,V3),id(V1),time(V3).
try_clause_literal(3,2,V1,V3):-not use_clause_literal(3,2),id(V1),time(V3).

