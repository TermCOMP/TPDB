%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:mlog(g).
% source: http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_java_LogBuiltIn.c

mlog(X) :- mlog(X, 0).

mlog(X, Res) :- X > 1, X1 is X // 2, Res1 is Res + 1, mlog(X1, Res1).
mlog(X, Res) :- X =< 1.
