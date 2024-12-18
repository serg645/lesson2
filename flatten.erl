-module(lesson2_task07).
-export([flatten/1]).

flatten([[H|T1]|T2])->flatten([H,T1|T2]);
flatten([[]|T])->flatten(T);
flatten([E|T])->[E|flatten(T)];
flatten([])->[].