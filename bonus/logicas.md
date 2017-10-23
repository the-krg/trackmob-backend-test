Lógica utilizada para realizar os exercícios:
======
## N-Rainhas

##### Descrição da Lógica:

_Para uma descrição visual, veja a imagem **lograinhas** nesta pasta;_

É colocada uma rainha na primeira posição possível, checando se não há outra rainha na mesma linha, coluna ou diagonal. Isto se repete até que acabam-se as linhas ou não até que não seja mais possível colocar uma rainha;
##### Descrição do código:

Repete-se a função de colocar a rainha na primeira posição possível;

Nesta função é chamada outra função que verifica se a casa é disponível ou não ( Checando se não há uma rainha na mesma linha, coluna ou diagonal );

Caso não haja posições disponíveis, a função retorna falso, e o programa tenta trocar a posição de outra rainha, e caso mais nenhuma rainha possa se mover, significa que o programa encontrou todas posições possíveis.

###### Comentários:
Sobre a performance, creio que não seja a melhor forma possível de se fazer o programa, foi a única solução que veio à minha mente. Foi o programa que mais me deu trabalho, tive que pesquisar bastante para descobrir uma solução.

## Númerais Romanos

##### Descrição da Lógica e do Programa:

Atribui-se à duas variáveis os valores em Romano até 'M' e os valores numéricos correspondentes;

Do maior para o menor e a partir do decimal menor ou igual ao _input_, é atribuído o valor correspondente em Romano à uma _string_ vazia e subtraído o valor decimal do _input_.

###### Comentários:
Acredito que esta seja uma das melhores formas possíveis de se realizar o programa, por ser uma forma simples, que não tem necessidade de chamar outras funções ou ela mesma. O código também fica pequeno com tal implementação, apenas utilizando **10 linhas** da função, o que o torna claro e limpo de ler. Não tive dificuldades ao fazer o programa, pois já tinha feito um parecido anteriormente.

## Parêntesis Balanceados

##### Descrição das Lógicas e do Programa:

_As duas lógicas são muito semelhantes, mas a final utiliza um recurso da linguagem;_

**Primeira lógica:** (Não é a lógica implementada no programa)

_Para uma descrição visual, veja a imagem **logparentesis** na pasta_

Primeiramente, eu havia pensado em uma função recursiva que compara duas chaves, e verifica se uma fecha a outra
* Caso sim: Remove as chaves e as substitui por um espaço em branco(""), após isso, a função é executada novamente;
* Caso não: Compara de novo, porém em uma posição adiante. Caso o comparador chegue até o fim sem remover chaves, significa que está desbalanceado!

**Lógica Final:** (Lógica implementada no programa)

Após descobrir o recurso _'gsub'_ do Ruby, apenas defini os tipos de chave numa variável e fiz o programa comparar o _input_ com os tipos. O _'gsub'_ faz o resto sozinho. No final, é retornado um _booleano_ :
* Caso sim(true): Todas chaves foram removidas, o que significa que está balanceado;
* Caso não(false): Significa que sobraram chaves, o que significa que nem todas foram substituídas por _""_, ou seja: Desbalanceado.

###### Comentários:

Acredito que seja uma das melhores formas possíveis, pois não é guardada muita informação na memória, o código é pequeno ( 7 linhas dentro da função ) e limpo e utiliza um recurso da linguagem.

Fazer o programa foi fácil, o problema foi o tempo gasto com a lógica, pois eu havia pensado em várias outras maneiras diferentes de fazer, que não eram tão boas.
