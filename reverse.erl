-module(demo).
-export([lesson2_task05/1]).

reverse(List)->reverse(List,[]).

reverse([],List)->List;
   reverse([H|T],List)->reverse(T,[H|List]).