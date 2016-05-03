#hide.
#show abduced_holdsAt/2.
#show arg2/1.
#show direction/1.
#show holdsAt/2.
#show time/1.

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

%%% I. Inflation
% #modeh holdsAt(relative_location(+arg2,+arg2,$direction),+time).
0 { abduced_holdsAt(relative_location(V1,V2,V3),V4) :arg2(V1) :arg2(V2) :direction(V3) :time(V4) } 2147483647.
#minimize[ abduced_holdsAt(relative_location(V1,V2,V3),V4) =1 @1 :arg2(V1) :arg2(V2) :direction(V3) :time(V4) ].
holdsAt(relative_location(V1,V2,V3),V4):-abduced_holdsAt(relative_location(V1,V2,V3),V4),arg2(V1),arg2(V2),direction(V3),time(V4).

