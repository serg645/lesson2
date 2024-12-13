-module(lesson2_task09).
-export([pack/1]).

pack(List)->pack(List, []).

pack([], List)->reverse(List);
pack([H1|T1], [[H1|T2]|T3])->pack(T1, [[H1,H1|T2]|T3]);
pack([H|T], List)->pack(T, [[H]|List]).


reverse(List)->reverse(List,[]).

reverse([],List)->List;
   reverse([H|T],List)->reverse(T,[H|List]).