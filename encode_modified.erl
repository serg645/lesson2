-module(lesson2_task11).
-export([encode_modified/1]).


encode_modified(List)->encode_modified(pack(List), []).

encode_modified([], List)->reverse(List);
encode_modified([[H|[]]|T2], List)->encode_modified(T2, [H|List]);
encode_modified([[H|T1]|T2], List)->encode_modified(T2, [{len(T1)+1, H}|List]).


pack(List)->pack(List, []).

pack([], List)->reverse(List);
pack([H1|T1], [[H1|T2]|T3])->pack(T1, [[H1,H1|T2]|T3]);
pack([H|T], List)->pack(T, [[H]|List]).


reverse(List)->reverse(List,[]).

reverse([],List)->List;
   reverse([H|T],List)->reverse(T,[H|List]).


len([])->0;
   len([H|T])->1+len(T).