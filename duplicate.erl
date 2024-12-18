-module(lesson2_task14).
-export([duplicate/1]).


duplicate(List)->duplicate(List, []).

duplicate([], List)->reverse(List);
duplicate([H|T], List)->duplicate(T, [H,H|List]).


reverse(List)->reverse(List,[]).

reverse([],List)->List;
   reverse([H|T],List)->reverse(T,[H|List]).