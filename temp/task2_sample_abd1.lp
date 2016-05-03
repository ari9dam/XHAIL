#hide.
#show abduced_initiatedAt/2.
#show abduced_terminatedAt/2.
#show arg1/1.
#show arg2/1.
#show arg3/1.
#show happensAt/2.
#show holdsAt/2.
#show initiatedAt/2.
#show lessThan/2.
#show neq/2.
#show terminatedAt/2.
#show time/1.

%%% B. Background
time(1..8).
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
neq(X,Y):-arg2(X),arg2(Y),X!=Y.
lessThan(T,S):-time(T),time(S),T<S.
next(T,S):-time(T),time(S),T=S+1.
happensAt(move(mary,bathroom),1).
happensAt(journey(sandra,bedroom),2).
happensAt(get(mary,football),3).
happensAt(go(john,kitchen),4).
happensAt(go_back(mary,kitchen),5).
happensAt(go_back(mary,garden),6).
bad_solution:-initiatedAt(location(football,garden),5),number_abduced(1).
bad_solution:-initiatedAt(location(football,garden),3),number_abduced(1).
bad_solution:-initiatedAt(location(football,garden),1),number_abduced(1).
bad_solution:-initiatedAt(location(football,garden),6),number_abduced(1).
bad_solution:-initiatedAt(location(football,garden),2),number_abduced(1).
bad_solution:-initiatedAt(location(football,garden),4),number_abduced(1).

%%% E. Examples
% #example holdsAt(location(football,garden),7).

:-not holdsAt(location(football,garden),7).
% #example not holdsAt(location(football,kitchen),7).

:-holdsAt(location(football,kitchen),7).

%%% I. Inflation
:-bad_solution.
number_abduced(V):-V:=#sum[ number_abduced(_,W) =W ].
% #modeh initiatedAt(location(+arg3,+arg2),+time).
0 { abduced_initiatedAt(location(V1,V2),V3) :arg3(V1) :arg2(V2) :time(V3) } 2147483647.
#minimize[ abduced_initiatedAt(location(V1,V2),V3) =1 @1 :arg3(V1) :arg2(V2) :time(V3) ].
initiatedAt(location(V1,V2),V3):-abduced_initiatedAt(location(V1,V2),V3),arg3(V1),arg2(V2),time(V3).
number_abduced(0,V):-V:=#count{ abduced_initiatedAt(location(V1,V2),V3) :arg3(V1) :arg2(V2) :time(V3) }.
% #modeh terminatedAt(location(+arg3,+arg2),+time).
0 { abduced_terminatedAt(location(V1,V2),V3) :arg3(V1) :arg2(V2) :time(V3) } 2147483647.
#minimize[ abduced_terminatedAt(location(V1,V2),V3) =1 @1 :arg3(V1) :arg2(V2) :time(V3) ].
terminatedAt(location(V1,V2),V3):-abduced_terminatedAt(location(V1,V2),V3),arg3(V1),arg2(V2),time(V3).
number_abduced(1,V):-V:=#count{ abduced_terminatedAt(location(V1,V2),V3) :arg3(V1) :arg2(V2) :time(V3) }.

