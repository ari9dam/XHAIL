#hide.
#show abduced_initiatedAt/2.
#show abduced_terminatedAt/2.
#show arg1/1.
#show arg3/1.
#show count/3.
#show happensAt/2.
#show initiatedAt/2.
#show terminatedAt/2.
#show time/1.

%%% B. Background
time(1..17).
arg3(apple;milk;football).
arg2(hallway;garden;office;kitchen;bathroom;bedroom).
arg1(daniel;sandra;mary;john).
fluent(carrying(X,Y)):-arg1(X),arg3(Y).
holdsAt(F,T+1):-fluent(F),time(T),initiatedAt(F,T).
holdsAt(F,T+1):-fluent(F),time(T),holdsAt(F,T),not terminatedAt(F,T).
count(X,N,T):-N=#count{holdsAt(carrying(X,Y),T):arg3(Y)},arg1(X),time(T).
initiatedAt(carrying(V1,V2),V3):-happensAt(get(V1,V2),V3),arg1(V1),arg3(V2),time(V3).
initiatedAt(carrying(V1,V2),V3):-happensAt(take(V1,V2),V3),arg1(V1),arg3(V2),time(V3).
terminatedAt(carrying(V1,V2),V3):-happensAt(drop(V1,V2),V3),arg1(V1),arg3(V2),time(V3).
initiatedAt(carrying(V1,V2),V3):-happensAt(pick_up(V1,V2),V3),arg1(V1),arg3(V2),time(V3).
initiatedAt(carrying(V1,V2),V3):-happensAt(grab(V1,V2),V3),arg1(V1),arg3(V2),time(V3).
terminatedAt(carrying(V1,V2),V3):-happensAt(discard(V1,V2),V3),arg1(V1),arg3(V2),time(V3).
terminatedAt(carrying(V1,V2),V3):-happensAt(put_down(V1,V2),V3),arg1(V1),arg3(V2),time(V3).
terminatedAt(carrying(V1,V2),V3):-happensAt(leave(V1,V2),V3),arg1(V1),arg3(V2),time(V3).
happensAt(go_back(mary,hallway),1).
happensAt(go_back(john,kitchen),2).
happensAt(go_back(john,hallway),3).
happensAt(get(mary,football),4).
happensAt(go_back(daniel,bathroom),6).
happensAt(hand_to(mary,john,football),7).
happensAt(put_down(john,football),9).
happensAt(grab(john,milk),10).
happensAt(get(john,football),12).
happensAt(go(sandra,kitchen),13).
happensAt(go_back(mary,bathroom),15).
happensAt(take(sandra,apple),16).

%%% E. Examples
% #example count(mary,1,5).

:-not count(mary,1,5).
% #example count(mary,0,8).

:-not count(mary,0,8).
% #example count(mary,0,11).

:-not count(mary,0,11).
% #example count(mary,0,14).

:-not count(mary,0,14).
% #example count(john,2,17).

:-not count(john,2,17).

%%% I. Inflation
% #modeh initiatedAt(carrying(+arg1,+arg3),+time).
0 { abduced_initiatedAt(carrying(V1,V2),V3) :arg1(V1) :arg3(V2) :time(V3) } 2147483647.
#minimize[ abduced_initiatedAt(carrying(V1,V2),V3) =1 @1 :arg1(V1) :arg3(V2) :time(V3) ].
initiatedAt(carrying(V1,V2),V3):-abduced_initiatedAt(carrying(V1,V2),V3),arg1(V1),arg3(V2),time(V3).
% #modeh terminatedAt(carrying(+arg1,+arg3),+time).
0 { abduced_terminatedAt(carrying(V1,V2),V3) :arg1(V1) :arg3(V2) :time(V3) } 2147483647.
#minimize[ abduced_terminatedAt(carrying(V1,V2),V3) =1 @1 :arg1(V1) :arg3(V2) :time(V3) ].
terminatedAt(carrying(V1,V2),V3):-abduced_terminatedAt(carrying(V1,V2),V3),arg1(V1),arg3(V2),time(V3).

