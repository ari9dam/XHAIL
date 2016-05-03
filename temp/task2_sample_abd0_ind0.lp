#hide.
#show holdsAt/2.
#show use_clause_literal/2.

%%% B. Background
time(1..30).
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
terminatedAt(location(X,Y),T):-initiatedAt(location(X,Z),T),Y!=Z,time(T),arg3(X),arg2(Y),arg2(Z).
happensAt(move(mary,bathroom),1).
happensAt(journey(sandra,bedroom),2).
happensAt(get(mary,football),3).
happensAt(go(john,kitchen),4).
happensAt(go_back(mary,kitchen),5).
happensAt(go_back(mary,garden),6).
happensAt(go_back(sandra,office),8).
happensAt(move(john,office),9).
happensAt(journey(sandra,hallway),10).
happensAt(go_back(daniel,kitchen),11).
happensAt(drop(mary,football),12).
happensAt(get(john,milk),13).
happensAt(take(mary,football),15).
happensAt(pick_up(sandra,apple),16).
happensAt(travel(mary,hallway),17).
happensAt(journey(john,kitchen),18).
happensAt(move(john,hallway),20).
happensAt(leave(sandra,apple),21).
happensAt(get(mary,apple),23).
happensAt(travel(john,garden),24).
happensAt(go_back(john,hallway),25).
happensAt(go_back(john,bedroom),26).
happensAt(journey(mary,bedroom),27).
happensAt(journey(john,kitchen),28).
happensAt(leave(john,milk),29).
happensAt(leave(mary,apple),30).

%%% E. Examples
% #example not holdsAt(location(football,garden),6).

:-holdsAt(location(football,garden),6).
% #example holdsAt(location(football,garden),7).

:-not holdsAt(location(football,garden),7).
% #example not holdsAt(location(football,kitchen),7).

:-holdsAt(location(football,kitchen),7).
% #example holdsAt(location(football,garden),14).

:-not holdsAt(location(football,garden),14).
% #example not holdsAt(location(football,hallway),14).

:-holdsAt(location(football,hallway),14).
% #example not holdsAt(location(football,hallway),17).

:-holdsAt(location(football,hallway),17).
% #example holdsAt(location(football,hallway),18).

:-not holdsAt(location(football,hallway),18).
% #example not holdsAt(location(football,garden),18).

:-holdsAt(location(football,garden),18).
% #example not holdsAt(location(apple,hallway),16).

:-holdsAt(location(apple,hallway),16).
% #example holdsAt(location(apple,hallway),17).

:-not holdsAt(location(apple,hallway),17).
% #example not holdsAt(location(apple,garden),17).

:-holdsAt(location(apple,garden),17).
% #example not holdsAt(location(milk,kitchen),27).

:-holdsAt(location(milk,kitchen),27).
% #example holdsAt(location(milk,kitchen),28).

:-not holdsAt(location(milk,kitchen),28).
% #example not holdsAt(location(milk,hallway),28).

:-holdsAt(location(milk,hallway),28).

%%% C. Compression
{ use_clause_literal(V1,0) }:-clause(V1).
{ use_clause_literal(V1,V2) }:-clause(V1),literal(V1,V2).
% initiatedAt(location(V1,V2),V3):-happensAt(get(V4,V1),V5),happensAt(drop(V4,V1),V6),happensAt(take(V4,V1),V7),happensAt(travel(V4,V2),V3).
clause(0).
literal(0,1).
literal(0,2).
literal(0,3).
literal(0,4).
:-not clause_level(0,0),clause_level(0,1).
clause_level(0,0):-use_clause_literal(0,0).
clause_level(0,1):-use_clause_literal(0,1).
clause_level(0,1):-use_clause_literal(0,2).
clause_level(0,1):-use_clause_literal(0,3).
clause_level(0,1):-use_clause_literal(0,4).
#minimize[ use_clause_literal(0,0) =1 @1 ].
#minimize[ use_clause_literal(0,1) =1 @1 ].
#minimize[ use_clause_literal(0,2) =1 @1 ].
#minimize[ use_clause_literal(0,3) =1 @1 ].
#minimize[ use_clause_literal(0,4) =1 @1 ].
initiatedAt(location(V1,V2),V3):-use_clause_literal(0,0),try_clause_literal(0,1,V4,V1,V5),try_clause_literal(0,2,V4,V1,V6),try_clause_literal(0,3,V4,V1,V7),try_clause_literal(0,4,V4,V2,V3),arg3(V1),arg2(V2),time(V3),arg1(V4),time(V5),time(V6),time(V7).
try_clause_literal(0,1,V4,V1,V5):-use_clause_literal(0,1),happensAt(get(V4,V1),V5),arg1(V4),arg3(V1),time(V5).
try_clause_literal(0,1,V4,V1,V5):-not use_clause_literal(0,1),arg1(V4),arg3(V1),time(V5).
try_clause_literal(0,2,V4,V1,V6):-use_clause_literal(0,2),happensAt(drop(V4,V1),V6),arg1(V4),arg3(V1),time(V6).
try_clause_literal(0,2,V4,V1,V6):-not use_clause_literal(0,2),arg1(V4),arg3(V1),time(V6).
try_clause_literal(0,3,V4,V1,V7):-use_clause_literal(0,3),happensAt(take(V4,V1),V7),arg1(V4),arg3(V1),time(V7).
try_clause_literal(0,3,V4,V1,V7):-not use_clause_literal(0,3),arg1(V4),arg3(V1),time(V7).
try_clause_literal(0,4,V4,V2,V3):-use_clause_literal(0,4),happensAt(travel(V4,V2),V3),arg1(V4),arg2(V2),time(V3).
try_clause_literal(0,4,V4,V2,V3):-not use_clause_literal(0,4),arg1(V4),arg2(V2),time(V3).
% initiatedAt(location(V1,V2),V3):-happensAt(get(V4,V1),V5),happensAt(go(V4,V2),V6),happensAt(journey(V4,V2),V7).
clause(1).
literal(1,1).
literal(1,2).
literal(1,3).
:-not clause_level(1,0),clause_level(1,1).
clause_level(1,0):-use_clause_literal(1,0).
clause_level(1,1):-use_clause_literal(1,1).
clause_level(1,1):-use_clause_literal(1,2).
clause_level(1,1):-use_clause_literal(1,3).
#minimize[ use_clause_literal(1,0) =1 @1 ].
#minimize[ use_clause_literal(1,1) =1 @1 ].
#minimize[ use_clause_literal(1,2) =1 @1 ].
#minimize[ use_clause_literal(1,3) =1 @1 ].
initiatedAt(location(V1,V2),V3):-use_clause_literal(1,0),try_clause_literal(1,1,V4,V1,V5),try_clause_literal(1,2,V4,V2,V6),try_clause_literal(1,3,V4,V2,V7),arg3(V1),arg2(V2),time(V3),arg1(V4),time(V5),time(V6),time(V7).
try_clause_literal(1,1,V4,V1,V5):-use_clause_literal(1,1),happensAt(get(V4,V1),V5),arg1(V4),arg3(V1),time(V5).
try_clause_literal(1,1,V4,V1,V5):-not use_clause_literal(1,1),arg1(V4),arg3(V1),time(V5).
try_clause_literal(1,2,V4,V2,V6):-use_clause_literal(1,2),happensAt(go(V4,V2),V6),arg1(V4),arg2(V2),time(V6).
try_clause_literal(1,2,V4,V2,V6):-not use_clause_literal(1,2),arg1(V4),arg2(V2),time(V6).
try_clause_literal(1,3,V4,V2,V7):-use_clause_literal(1,3),happensAt(journey(V4,V2),V7),arg1(V4),arg2(V2),time(V7).
try_clause_literal(1,3,V4,V2,V7):-not use_clause_literal(1,3),arg1(V4),arg2(V2),time(V7).
% initiatedAt(location(V1,V2),V3):-happensAt(pick_up(V4,V1),V3),happensAt(journey(V4,V2),V5).
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
initiatedAt(location(V1,V2),V3):-use_clause_literal(2,0),try_clause_literal(2,1,V4,V1,V3),try_clause_literal(2,2,V4,V2,V5),arg3(V1),arg2(V2),time(V3),arg1(V4),time(V5).
try_clause_literal(2,1,V4,V1,V3):-use_clause_literal(2,1),happensAt(pick_up(V4,V1),V3),arg1(V4),arg3(V1),time(V3).
try_clause_literal(2,1,V4,V1,V3):-not use_clause_literal(2,1),arg1(V4),arg3(V1),time(V3).
try_clause_literal(2,2,V4,V2,V5):-use_clause_literal(2,2),happensAt(journey(V4,V2),V5),arg1(V4),arg2(V2),time(V5).
try_clause_literal(2,2,V4,V2,V5):-not use_clause_literal(2,2),arg1(V4),arg2(V2),time(V5).
% initiatedAt(location(V1,V2),V3):-happensAt(get(V4,V1),V5),happensAt(go_back(V4,V2),V3).
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
initiatedAt(location(V1,V2),V3):-use_clause_literal(3,0),try_clause_literal(3,1,V4,V1,V5),try_clause_literal(3,2,V4,V2,V3),arg3(V1),arg2(V2),time(V3),arg1(V4),time(V5).
try_clause_literal(3,1,V4,V1,V5):-use_clause_literal(3,1),happensAt(get(V4,V1),V5),arg1(V4),arg3(V1),time(V5).
try_clause_literal(3,1,V4,V1,V5):-not use_clause_literal(3,1),arg1(V4),arg3(V1),time(V5).
try_clause_literal(3,2,V4,V2,V3):-use_clause_literal(3,2),happensAt(go_back(V4,V2),V3),arg1(V4),arg2(V2),time(V3).
try_clause_literal(3,2,V4,V2,V3):-not use_clause_literal(3,2),arg1(V4),arg2(V2),time(V3).

