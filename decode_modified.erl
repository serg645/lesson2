-module(lesson2_task12).
-export([decode_modified/1]).


decode_modified(List)->decode_modified(List, []).

decode_modified([], List)->reverse(List);
decode_modified([{0,S}|T], List)->decode_modified(T, List);
decode_modified([{L,S}|T], List)->decode_modified([{L-1,S}|T], [S|List]);
decode_modified([H|T], List)->decode_modified(T, [H|List]).


reverse(List)->reverse(List,[]).

reverse([],List)->List;
   reverse([H|T],List)->reverse(T,[H|List]).