
<img width="1120" height="327" alt="image" src="https://github.com/user-attachments/assets/b2dfbcd6-7c99-414e-8189-ca805d9778e2" />



- O CALCARDS é um jogo digital estratégico onde o objetivo é usar cartas de números e de operações/funções para alcançar um valor alvo gerado aleatoriamente, dispondo de um total de 3 níveis.
- No início do jogo, o jogador começa com um conjunto de cartas e, a cada nova rodada, ele recebe novas cartas.
- Além de receber novas cartas ao fim de uma rodada, também é acionado um evento especial que pode, por exemplo, alterar no valor gerado, trocar uma carta de operação, etc.
- Com um total de 3 rodadas, o jogador deve chegar o mais próximo possível do valor aleatório gerado na tela, de forma que as estrelas ganhas ao final são baseadas em quão perto ele chegou desse objetivo (detalhado na tabela ao final).
- Cada nível superior adiciona um conjunto de cartas novas que não existia no nível anterior (detalhadas na tabela abaixo) e aumenta o intervalo do valores que podem ser gerados.
  
   | - | Nível 1 | Nível 2 | Nível 3
   | --- | ------- | ------- | -------
   | Números | 0 a 9 | -9 a 9 | números do nível 2
   | Operações | +, -, x, ÷ | operações do nível 1 e ^,√ | operações do nível 2
   | Funções | não tem | não tem | $f(x) = x^x$, $f(x) = \sqrt[x]x$, $f(x) = -x$ e $f(x) = x!$

   | - | Sistema de pontuação | 
   | --- | ---------------------|
   | 3 estrelas | o resultado final é igual ao valor gerado
   | 2 estrelas | o resultado final tem um erro de até 7,5% sobre o total de valores possíveis
   | 1 estrela | o resultado final tem um erro de até 15% sobre o total de valores possíveis
   | 0 estrelas | o resultado final tem um erro maior que 15% sobre o total de valores possíveis
