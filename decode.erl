-module(lesson2_task13).
-export([decode/1]).



decode(List)->decode(List, []).

decode([], List)->reverse(List);
decode([{0,S}|T2], List)->decode(T2, List);
decode([{L,S}|T2], List)->decode([{L-1,S}|T2], [S|List]).


reverse(List)->reverse(List,[]).

reverse([],List)->List;
   reverse([H|T],List)->reverse(T,[H|List]).