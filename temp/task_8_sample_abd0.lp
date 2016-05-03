#hide.
#show abduced_initiatedAt/2.
#show abduced_terminatedAt/2.
#show arg1/1.
#show arg3/1.
#show happensAt/2.
#show holdsAt/2.
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

%%% I. Inflation
% #modeh initiatedAt(carrying(+arg1,+arg3),+time).
0 { abduced_initiatedAt(carrying(V1,V2),V3) :arg1(V1) :arg3(V2) :time(V3) } 2147483647.
#minimize[ abduced_initiatedAt(carrying(V1,V2),V3) =1 @1 :arg1(V1) :arg3(V2) :time(V3) ].
initiatedAt(carrying(V1,V2),V3):-abduced_initiatedAt(carrying(V1,V2),V3),arg1(V1),arg3(V2),time(V3).
% #modeh terminatedAt(carrying(+arg1,+arg3),+time).
0 { abduced_terminatedAt(carrying(V1,V2),V3) :arg1(V1) :arg3(V2) :time(V3) } 2147483647.
#minimize[ abduced_terminatedAt(carrying(V1,V2),V3) =1 @1 :arg1(V1) :arg3(V2) :time(V3) ].
terminatedAt(carrying(V1,V2),V3):-abduced_terminatedAt(carrying(V1,V2),V3),arg1(V1),arg3(V2),time(V3).

