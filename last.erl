-module(lesson2_task01).
-export([last/1]).

last([N])->N;
   last([H|T])->last(T).