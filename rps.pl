play :-
    repeat,
    write('choice[r/p/s]? '),
    player(P),
    comp(C),
    winner(P,C).

winner(P,C) :- wins(P,C), win.
winner(P,C) :- wins(C,P), lose.
winner(C,C) :- draw, fail.

player(T) :- repeat, get_char(T), memberchk(T,[r,p,s]).

comp(T) :- random_member(T, [r, p, s]), show_comp(T).

wins(p, r). 
wins(r, s).
wins(s, p).

win  :- writeln('You win!').
lose :- writeln('The computer wins').
draw :- writeln('It''s a draw...').
show_comp(r) :- writeln(rock).
show_comp(p) :- writeln(paper).
show_comp(s) :- writeln(scissors).