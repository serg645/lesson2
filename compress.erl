-module(lesson2_task08).
-export([compress/1]).

compress(List)->compress(List, []).

compress([], List)->reverse(List);
compress([H1|T1], [H1|T2])->compress(T1, [H1|T2]);
compress([H|T], List)->compress(T, [H|List]).


reverse(List)->reverse(List,[]).

reverse([],List)->List;
   reverse([H|T],List)->reverse(T,[H|List]).