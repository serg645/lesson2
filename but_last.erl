-module(lesson2_task02).
-export([but_last/1]).

but_last([A,B])->[A,B];
   but_last([H|T])->but_last(T).