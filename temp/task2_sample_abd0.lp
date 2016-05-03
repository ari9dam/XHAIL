#hide.
#show abduced_initiatedAt/2.
#show arg1/1.
#show arg2/1.
#show arg3/1.
#show happensAt/2.
#show holdsAt/2.
#show initiatedAt/2.
#show time/1.

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

%%% I. Inflation
% #modeh initiatedAt(location(+arg3,+arg2),+time).
0 { abduced_initiatedAt(location(V1,V2),V3) :arg3(V1) :arg2(V2) :time(V3) } 2147483647.
#minimize[ abduced_initiatedAt(location(V1,V2),V3) =1 @1 :arg3(V1) :arg2(V2) :time(V3) ].
initiatedAt(location(V1,V2),V3):-abduced_initiatedAt(location(V1,V2),V3),arg3(V1),arg2(V2),time(V3).

