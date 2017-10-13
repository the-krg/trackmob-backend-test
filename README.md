Trackmob - Teste para Backend
---

A fim de avaliar sua lógica de programação e seu conhecimento básico de linguagem de programação, separamos esses três problemas clássicos.
Você deve implementar cada método referente aos problemas em **Ruby** e adicionar testes usando **RSpec** para validar sua implementação.
Para entregar a sua implementação, você deve fazer um fork deste projeto no GitHub e nos enviar o link com a sua solução.

Critérios de Avaliação
---

Você será avaliado pelos seguintes critérios:

- Qualidade e clareza do código
- Performance da solução
- Quantidade e relevância dos testes

Bônus
---

- Avalie a performance do seu código e gere um relatório de performance
- Justifique sua implementação e se é a solução ótima para o problema

Os problemas
---

## N rainhas

Posicione N rainhas do xadrez num tabuleiro de xadrez de tamanho NxN (onde N>3) de tal forma que duas rainhas não ameacem (possam capturar) uma a outra.
Portanto a solução requer que duas rainhas não compartilhem uma mesma _linha_, _coluna_ ou _diagonal_.
Retorne uma string representando o tabuleiro NxN (com N linhas e N colunas), onde _*_ representa uma rainha e _-_ representa um espaço vazio.

## Numerais Romanos

Dado um número inteiro positivo (por exemplo 42) determine o seu numeral romano representado como uma _String_ (ex: "XLII")

Você não pode escrever numerais como _IM_ para 999. A Wikipedia define: "Numerais romanos modernos são escritos definindo cada dígito separadamente começando com o dígito mais a esquerda e pulando qualquer dígito com o valor de zero."

Exemplos:

- 1 -> "I" | 10 -> "X" | 100 -> "C" | 1000 -> "M"
- 2 ->   "II" | 20 ->   "XX" | 200 ->   "CC" | 2000 ->   "MM"
- 3 ->  "III" | 30 ->  "XXX" | 300 ->  "CCC" | 3000 ->  "MMM"
- 4 ->   "IV" | 40 ->   "XL" | 400 ->   "CD" | 4000 -> "MMMM"
- 5 ->    "V" | 50 ->    "L" | 500 ->    "D"
- 6 ->   "VI" | 60 ->   "LX" | 600 ->   "DC" 
- 7 ->  "VII" | 70 ->  "LXX" | 700 ->  "DCC"
- 8 -> "VIII" | 80 -> "LXXX" | 800 -> "DCCC"
- 9 ->   "IX" | 90 ->   "XC" | 900 ->   "CM"
- 1990 -> "MCMXC"  (1000 -> "M"  + 900 -> "CM" + 90 -> "XC")
- 2008 -> "MMVIII" (2000 -> "MM" + 8 -> "VIII")
- 99 -> "XCIX"   (90 -> "XC" + 9 -> "IX")
- 47 -> "XLVII"  (40 -> "XL" + 7 -> "VII")

## Parêntesis Balanceados

Determine se os parênteses (), colchetes [] e chaves {} numa _string_ estão balanceados.

Por exemplo:
- {{)(}} não está balanceado porque ) vem antes de (
- ({)} não é balanceado porque o ) não está balanceado entre as {} e similarmente a { não está balanceada entre os ()
- [({})] está balanceado
- {}([]) está balanceado
- {()}[[{}]] está balanceado