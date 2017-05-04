% ------------------------------------------------------------------------ %

% Criar um programa para receber diversos valores numéricos digitados pelo
% usuário e gravar em um arquivo. A digitação dos valores deve ser feita por uma
% rotina interativa, que solicita um valor numérico do usuário por vez, grava esse
% valor no arquivo de saída, pede o próximo valor. A digitação será encerrada
% quando o usuário digitar “fim”, que não deve ser gravado no arquivo.
% A seguir, o programa deve fechar esse arquivo de saída, abri-lo como arquivo de
% entrada, ler os valores gravados anteriormente no arquivo, um a um, calcular a
% raiz quadrada de cada valor lido do arquivo e exibir o resultado no monitor.
% Terminar com a mensagem “Fim de processamento”, exibida no monitor.

% ------------------------------------------------------------------------ %
recebe :-
    open('saida.txt', write, Stream),
    write('Próximo valor: '), nl, 
    repeat,
    read(X),
    
    write(Stream, X), write(Stream, '.'), nl(Stream),
    X = 'fim', close(Stream), !.

% ------------------------------------------------------------------------ %

abre :-
    catch(open('saida.txt', read, ID),
        _,
        (write('Impossível abrir arquivo':'saida.txt'), nl, true)),
    repeat,             % repete "eternamente"
    read(ID, X),        % Lê da curso de entrada
    Z is X * X,         % Calcula o quadrado de X
    write(X), write(' ao quadrado é '),       % Imprime no curso de saídas
    write(Z), nl,       % Imprime o quadrado de X
    X == end_of_file,   % fail (backtrack) se não é fim de arquivo
    close(ID),          % Fecha arquivo
    X = 'fim', write('Fim de processamento'). % Finaliza

% ------------------------------------------------------------------------ %

main :-
    recebe, abre.
    
% ------------------------------------------------------------------------ %
