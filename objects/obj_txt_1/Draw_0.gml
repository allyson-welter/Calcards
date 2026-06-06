// 1. Configurações da Fonte
draw_set_font(fnt_number);
draw_set_color(c_white);

// =======================================================
// DESENHANDO O TÍTULO (Centralizado)
// =======================================================
draw_set_halign(fa_center);
var titulo = "REGRAS DO JOGO";
// Desenha o título no topo (Y = 10)
draw_text_transformed(room_width / 2, 10, titulo, 1.3, 1.3, 0);


// =======================================================
// DESENHANDO AS REGRAS (Alinhado à Esquerda)
// =======================================================
draw_set_halign(fa_left);

// Texto 1: Explicação das Fases
var texto_fases = "O jogo e dividido em 3 Fases:\n" +
                  "- Fase 1: Soma, Subtracao, Multiplicacao e Divisao.\n" +
                  "- Fase 2: Anterior + Potenciacao e Radiciacao.\n" +
                  "- Fase 3: Anterior + Funcoes Especiais.";

// Desenha o texto das fases um pouco mais abaixo (Y = 30)
// Começa no X = 20 e vai até a largura máxima de 280
draw_text_ext(20, 30, texto_fases, 9, 280);


// Texto 2: Explicação das Cartas
var texto_cartas = "Em cada partida, voce recebera 7 cartas na mao (valores de 0 a 9):\n" +
                   "- 4 Cartas de Numeros\n" +
                   "- 3 Cartas de Operacoes";

// Desenha o texto das cartas mais abaixo (Y = 105)
draw_text_ext(20, 105, texto_cartas, 9, 280);