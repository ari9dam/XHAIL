#hide.
#show abduced_initiatedAt/2.
#show abduced_terminatedAt/2.
#show arg1/1.
#show arg2/1.
#show happensAt/2.
#show holdsAt/2.
#show initiatedAt/2.
#show neq/2.
#show terminatedAt/2.
#show time/1.

%%% B. Background
time(1..12).
arg2(hallway;garden;office;kitchen;bathroom;bedroom).
arg1(daniel;sandra;mary;john).
fluent(location(X,Y)):-arg1(X),arg2(Y).
event(go(X,Y)):-arg1(X),arg2(Y).
event(go_back(X,Y)):-arg1(X),arg2(Y).
event(move(X,Y)):-arg1(X),arg2(Y).
event(travel(X,Y)):-arg1(X),arg2(Y).
event(journey(X,Y)):-arg1(X),arg2(Y).
holdsAt(F,T+1):-fluent(F),time(T),initiatedAt(F,T).
holdsAt(F,T+1):-fluent(F),time(T),holdsAt(F,T),not terminatedAt(F,T).
neq(X,Y):-arg2(X),arg2(Y),X!=Y.
lessThan(T,S):-time(T),time(S),T<S.
next(T,S):-time(T),time(S),T=S+1.
happensAt(move(mary,bathroom),1).
happensAt(go(john,hallway),2).
happensAt(go_back(daniel,hallway),3).
happensAt(move(sandra,garden),4).
happensAt(move(john,office),5).
happensAt(journey(sandra,bathroom),6).
happensAt(move(mary,hallway),7).
happensAt(travel(daniel,office),8).
happensAt(go_back(john,garden),10).
happensAt(move(john,bedroom),11).
:-holdsAt(location(A,B),T),holdsAt(location(A,C),T),neq(B,C),arg1(A),arg2(B),arg2(C),time(T).
bad_solution:-terminatedAt(location(daniel,hallway),7),initiatedAt(location(daniel,office),8),initiatedAt(location(sandra,bathroom),5),initiatedAt(location(mary,bathroom),1),initiatedAt(location(daniel,hallway),3),number_abduced(5).
bad_solution:-initiatedAt(location(sandra,bathroom),6),terminatedAt(location(daniel,hallway),8),initiatedAt(location(daniel,office),8),initiatedAt(location(mary,bathroom),2),initiatedAt(location(daniel,hallway),3),number_abduced(5).
bad_solution:-initiatedAt(location(daniel,hallway),1),initiatedAt(location(sandra,bathroom),6),terminatedAt(location(daniel,hallway),7),initiatedAt(location(mary,bathroom),2),initiatedAt(location(daniel,office),7),number_abduced(5).
bad_solution:-initiatedAt(location(daniel,hallway),1),terminatedAt(location(daniel,hallway),7),initiatedAt(location(daniel,office),8),initiatedAt(location(mary,bathroom),2),initiatedAt(location(sandra,bathroom),4),number_abduced(5).
bad_solution:-initiatedAt(location(sandra,bathroom),9),initiatedAt(location(daniel,hallway),1),terminatedAt(location(daniel,hallway),7),initiatedAt(location(daniel,office),8),initiatedAt(location(mary,bathroom),1),number_abduced(5).
bad_solution:-terminatedAt(location(daniel,hallway),8),initiatedAt(location(daniel,office),8),initiatedAt(location(mary,bathroom),1),initiatedAt(location(sandra,bathroom),4),initiatedAt(location(daniel,hallway),2),number_abduced(5).
bad_solution:-initiatedAt(location(daniel,hallway),1),initiatedAt(location(sandra,bathroom),6),terminatedAt(location(daniel,hallway),7),initiatedAt(location(daniel,office),8),initiatedAt(location(mary,bathroom),1),number_abduced(5).
bad_solution:-terminatedAt(location(daniel,hallway),7),initiatedAt(location(sandra,bathroom),10),initiatedAt(location(daniel,office),8),initiatedAt(location(mary,bathroom),2),initiatedAt(location(daniel,hallway),3),number_abduced(5).
bad_solution:-terminatedAt(location(daniel,hallway),7),initiatedAt(location(mary,bathroom),1),initiatedAt(location(sandra,bathroom),4),initiatedAt(location(daniel,office),7),initiatedAt(location(daniel,hallway),3),number_abduced(5).
bad_solution:-terminatedAt(location(daniel,hallway),7),initiatedAt(location(sandra,bathroom),10),initiatedAt(location(mary,bathroom),2),initiatedAt(location(daniel,office),7),initiatedAt(location(daniel,hallway),3),number_abduced(5).
bad_solution:-initiatedAt(location(sandra,bathroom),11),terminatedAt(location(daniel,hallway),7),initiatedAt(location(mary,bathroom),2),initiatedAt(location(daniel,office),7),initiatedAt(location(daniel,hallway),2),number_abduced(5).
bad_solution:-initiatedAt(location(sandra,bathroom),6),terminatedAt(location(daniel,hallway),8),initiatedAt(location(daniel,office),8),initiatedAt(location(mary,bathroom),1),initiatedAt(location(daniel,hallway),3),number_abduced(5).
bad_solution:-initiatedAt(location(sandra,bathroom),6),terminatedAt(location(daniel,hallway),7),initiatedAt(location(mary,bathroom),2),initiatedAt(location(daniel,office),7),initiatedAt(location(daniel,hallway),3),number_abduced(5).
bad_solution:-initiatedAt(location(daniel,hallway),1),initiatedAt(location(sandra,bathroom),6),terminatedAt(location(daniel,hallway),7),initiatedAt(location(daniel,office),8),initiatedAt(location(mary,bathroom),2),number_abduced(5).
bad_solution:-initiatedAt(location(daniel,hallway),1),terminatedAt(location(daniel,hallway),7),initiatedAt(location(daniel,office),8),initiatedAt(location(mary,bathroom),1),initiatedAt(location(sandra,bathroom),4),number_abduced(5).
bad_solution:-initiatedAt(location(sandra,bathroom),6),terminatedAt(location(daniel,hallway),8),initiatedAt(location(daniel,office),8),initiatedAt(location(daniel,hallway),4),initiatedAt(location(mary,bathroom),1),number_abduced(5).
bad_solution:-terminatedAt(location(daniel,hallway),7),initiatedAt(location(daniel,office),8),initiatedAt(location(mary,bathroom),2),initiatedAt(location(sandra,bathroom),4),initiatedAt(location(daniel,hallway),3),number_abduced(5).
bad_solution:-initiatedAt(location(daniel,hallway),1),terminatedAt(location(daniel,hallway),8),initiatedAt(location(daniel,office),8),initiatedAt(location(mary,bathroom),2),initiatedAt(location(sandra,bathroom),2),number_abduced(5).
bad_solution:-initiatedAt(location(sandra,bathroom),6),terminatedAt(location(daniel,hallway),7),initiatedAt(location(daniel,office),8),initiatedAt(location(mary,bathroom),2),initiatedAt(location(daniel,hallway),3),number_abduced(5).
bad_solution:-terminatedAt(location(daniel,hallway),7),initiatedAt(location(daniel,office),8),initiatedAt(location(mary,bathroom),1),initiatedAt(location(sandra,bathroom),4),initiatedAt(location(daniel,hallway),3),number_abduced(5).
bad_solution:-initiatedAt(location(daniel,hallway),1),initiatedAt(location(sandra,bathroom),6),terminatedAt(location(daniel,hallway),8),initiatedAt(location(daniel,office),8),initiatedAt(location(mary,bathroom),2),number_abduced(5).
bad_solution:-initiatedAt(location(daniel,hallway),1),initiatedAt(location(sandra,bathroom),6),terminatedAt(location(daniel,hallway),7),initiatedAt(location(mary,bathroom),1),initiatedAt(location(daniel,office),7),number_abduced(5).
bad_solution:-terminatedAt(location(daniel,hallway),8),initiatedAt(location(daniel,office),8),initiatedAt(location(mary,bathroom),2),initiatedAt(location(sandra,bathroom),4),initiatedAt(location(daniel,hallway),3),number_abduced(5).
bad_solution:-initiatedAt(location(daniel,hallway),1),terminatedAt(location(daniel,hallway),7),initiatedAt(location(mary,bathroom),1),initiatedAt(location(sandra,bathroom),4),initiatedAt(location(daniel,office),7),number_abduced(5).
bad_solution:-terminatedAt(location(daniel,hallway),7),initiatedAt(location(mary,bathroom),2),initiatedAt(location(sandra,bathroom),4),initiatedAt(location(daniel,office),7),initiatedAt(location(daniel,hallway),3),number_abduced(5).
bad_solution:-initiatedAt(location(daniel,hallway),1),terminatedAt(location(daniel,hallway),8),initiatedAt(location(daniel,office),8),initiatedAt(location(mary,bathroom),2),initiatedAt(location(sandra,bathroom),4),number_abduced(5).
bad_solution:-initiatedAt(location(sandra,bathroom),6),terminatedAt(location(daniel,hallway),7),initiatedAt(location(daniel,office),8),initiatedAt(location(mary,bathroom),1),initiatedAt(location(daniel,hallway),3),number_abduced(5).
bad_solution:-terminatedAt(location(daniel,hallway),7),initiatedAt(location(sandra,bathroom),5),initiatedAt(location(mary,bathroom),1),initiatedAt(location(daniel,office),7),initiatedAt(location(daniel,hallway),3),number_abduced(5).
bad_solution:-initiatedAt(location(sandra,bathroom),6),terminatedAt(location(daniel,hallway),7),initiatedAt(location(mary,bathroom),1),initiatedAt(location(daniel,office),7),initiatedAt(location(daniel,hallway),3),number_abduced(5).
bad_solution:-terminatedAt(location(daniel,hallway),8),initiatedAt(location(daniel,office),8),initiatedAt(location(mary,bathroom),1),initiatedAt(location(sandra,bathroom),4),initiatedAt(location(daniel,hallway),3),number_abduced(5).
bad_solution:-initiatedAt(location(daniel,hallway),1),terminatedAt(location(daniel,hallway),7),initiatedAt(location(mary,bathroom),2),initiatedAt(location(sandra,bathroom),4),initiatedAt(location(daniel,office),7),number_abduced(5).
bad_solution:-initiatedAt(location(daniel,hallway),1),terminatedAt(location(daniel,hallway),7),initiatedAt(location(daniel,office),8),initiatedAt(location(mary,bathroom),2),initiatedAt(location(sandra,bathroom),5),number_abduced(5).
bad_solution:-initiatedAt(location(sandra,bathroom),9),initiatedAt(location(daniel,hallway),1),terminatedAt(location(daniel,hallway),8),initiatedAt(location(daniel,office),8),initiatedAt(location(mary,bathroom),1),number_abduced(5).
bad_solution:-terminatedAt(location(daniel,hallway),8),initiatedAt(location(daniel,office),8),initiatedAt(location(sandra,bathroom),5),initiatedAt(location(mary,bathroom),1),initiatedAt(location(daniel,hallway),3),number_abduced(5).
bad_solution:-terminatedAt(location(daniel,hallway),8),initiatedAt(location(sandra,bathroom),10),initiatedAt(location(daniel,office),8),initiatedAt(location(mary,bathroom),2),initiatedAt(location(daniel,hallway),3),number_abduced(5).
bad_solution:-initiatedAt(location(sandra,bathroom),8),terminatedAt(location(daniel,hallway),7),initiatedAt(location(daniel,hallway),4),initiatedAt(location(mary,bathroom),1),initiatedAt(location(daniel,office),7),number_abduced(5).

%%% E. Examples
% #example holdsAt(location(mary,bathroom),3).

:-not holdsAt(location(mary,bathroom),3).
% #example not holdsAt(location(mary,hallway),3).

:-holdsAt(location(mary,hallway),3).
% #example holdsAt(location(daniel,hallway),5).

:-not holdsAt(location(daniel,hallway),5).
% #example not holdsAt(location(daniel,garden),5).

:-holdsAt(location(daniel,garden),5).
% #example holdsAt(location(daniel,hallway),7).

:-not holdsAt(location(daniel,hallway),7).
% #example not holdsAt(location(daniel,garden),7).

:-holdsAt(location(daniel,garden),7).
% #example holdsAt(location(daniel,office),9).

:-not holdsAt(location(daniel,office),9).
% #example not holdsAt(location(daniel,hallway),9).

:-holdsAt(location(daniel,hallway),9).
% #example holdsAt(location(sandra,bathroom),12).

:-not holdsAt(location(sandra,bathroom),12).
% #example not holdsAt(location(sandra,hallway),12).

:-holdsAt(location(sandra,hallway),12).

%%% I. Inflation
:-bad_solution.
number_abduced(V):-V:=#sum[ number_abduced(_,W) =W ].
% #modeh initiatedAt(location(+arg1,+arg2),+time).
0 { abduced_initiatedAt(location(V1,V2),V3) :arg1(V1) :arg2(V2) :time(V3) } 2147483647.
#minimize[ abduced_initiatedAt(location(V1,V2),V3) =1 @1 :arg1(V1) :arg2(V2) :time(V3) ].
initiatedAt(location(V1,V2),V3):-abduced_initiatedAt(location(V1,V2),V3),arg1(V1),arg2(V2),time(V3).
number_abduced(0,V):-V:=#count{ abduced_initiatedAt(location(V1,V2),V3) :arg1(V1) :arg2(V2) :time(V3) }.
% #modeh terminatedAt(location(+arg1,+arg2),+time).
0 { abduced_terminatedAt(location(V1,V2),V3) :arg1(V1) :arg2(V2) :time(V3) } 2147483647.
#minimize[ abduced_terminatedAt(location(V1,V2),V3) =1 @1 :arg1(V1) :arg2(V2) :time(V3) ].
terminatedAt(location(V1,V2),V3):-abduced_terminatedAt(location(V1,V2),V3),arg1(V1),arg2(V2),time(V3).
number_abduced(1,V):-V:=#count{ abduced_terminatedAt(location(V1,V2),V3) :arg1(V1) :arg2(V2) :time(V3) }.

