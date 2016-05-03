#hide.
#show abduced_initiatedAt/2.
#show abduced_terminatedAt/2.
#show arg1/1.
#show arg2/1.
#show direction/1.
#show happensAt/2.
#show holdsAt/2.
#show initiatedAt/2.
#show terminatedAt/2.
#show time/1.

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

%%% I. Inflation
% #modeh initiatedAt(location(+arg1,+arg2),+time).
0 { abduced_initiatedAt(location(V1,V2),V3) :arg1(V1) :arg2(V2) :time(V3) } 2147483647.
#minimize[ abduced_initiatedAt(location(V1,V2),V3) =1 @1 :arg1(V1) :arg2(V2) :time(V3) ].
initiatedAt(location(V1,V2),V3):-abduced_initiatedAt(location(V1,V2),V3),arg1(V1),arg2(V2),time(V3).
% #modeh terminatedAt(location(+arg1,+arg2),+time).
0 { abduced_terminatedAt(location(V1,V2),V3) :arg1(V1) :arg2(V2) :time(V3) } 2147483647.
#minimize[ abduced_terminatedAt(location(V1,V2),V3) =1 @1 :arg1(V1) :arg2(V2) :time(V3) ].
terminatedAt(location(V1,V2),V3):-abduced_terminatedAt(location(V1,V2),V3),arg1(V1),arg2(V2),time(V3).

