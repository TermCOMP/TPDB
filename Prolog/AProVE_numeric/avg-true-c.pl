%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:average(g,g,f).
% source: port of http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/Avg_true.c

average(X, Y, Res) :- X > 0, !, XRec is X - 1, YRec is Y + 1, average(XRec, YRec, Res).
average(X, Y, Res) :- Y > 2, !, XRec is X + 1, YRec is Y - 2, average(XRec, YRec, RecRes), Res is RecRes + 1.
average(_, _, 1) :- !.
