-module(lesson2_task06).
-export([is_palindrome/1]).

is_palindrome(List)->is_palindrome(List,[], false).

is_palindrome([H|T], List, true)->true;
   is_palindrome([],[_], true)->true;
   is_palindrome(List, List, false)->true;
   is_palindrome([], List, false)->false;
   is_palindrome([H|T], List, false)->is_palindrome(T, [H|List], T==List).