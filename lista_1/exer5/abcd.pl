% Criar um programa para receber diversos valores numéricos digitados pelo
% usuário e gravar em um arquivo. A digitação dos valores deve ser feita por uma
% rotina interativa, que solicita um valor numérico do usuário por vez, grava esse
% valor no arquivo de saída, pede o próximo valor. A digitação será encerrada
% quando o usuário digitar “fim”, que não deve ser gravado no arquivo.
% A seguir, o programa deve fechar esse arquivo de saída, abri-lo como arquivo de
% entrada, ler os valores gravados anteriormente no arquivo, um a um, calcular a
% raiz quadrada de cada valor lido do arquivo e exibir o resultado no monitor.
% Terminar com a mensagem “Fim de processamento”, exibida no monitor.



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

