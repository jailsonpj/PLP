% Lê valores de um arquivos (valores finalizados com '.') e 
% mostra na tela (por enquanto imprimindo "end_of_file').
recebe :-
    open('saida.txt', write, Stream),
%	  _,
 % 	  (write('Impossível criar arquivo de saída.':'saida.txt', nl, true))),
    write('Próximo valor: '), nl, 
    repeat,
    read(X),
    write(Stream, X),nl,
    X = 'fim', !,
    close(Stream).



abre(F) :-
  % open(F, read, ID),  % open a stream
  catch(open(F, read, ID),
        _,
        (write('Impossível abrir arquivo':F), nl, true)),
  repeat,             % try again forever
  read(ID, X),        % read from the stream
  write(X), nl,       % write to current output stream
  X == end_of_file,   % fail (backtrack) if not end of file
  close(ID).          % close the file

