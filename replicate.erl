-module(lesson2_task14).
-export([replicate/2]).


replicate(List, L)->replicate(List, L, L, []).

replicate([], L, OriginalL, List)->reverse(List);
replicate([H|T], 0, OriginalL, List)->replicate(T, OriginalL, OriginalL, List);
replicate([H|T], L, OriginalL, List)->replicate([H|T], L-1, OriginalL, [H|List]).


reverse(List)->reverse(List,[]).

reverse([],List)->List;
   reverse([H|T],List)->reverse(T,[H|List]).