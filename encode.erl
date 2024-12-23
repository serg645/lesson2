-module(lesson2_task10).
-export([encode/1]).


encode(List)->encode(pack(List), []).

encode([], List)->reverse(List);
encode([[H|T1]|T2], List)->encode(T2, [{len(T1)+1, H}|List]).

pack(List)->pack(List, []).

pack([], List)->reverse(List);
pack([H1|T1], [[H1|T2]|T3])->pack(T1, [[H1,H1|T2]|T3]);
pack([H|T], List)->pack(T, [[H]|List]).


reverse(List)->reverse(List,[]).

reverse([],List)->List;
   reverse([H|T],List)->reverse(T,[H|List]).


len([])->0;
   len([H|T])->1+len(T).