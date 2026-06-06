// 1. Configurações Iniciais da Fonte
draw_set_font(fnt_number);
draw_set_color(c_white);

// 2. Textos separados
var titulo = "COMO JOGAR";
var texto_regras = 
    "O jogo dura 3 rodadas acumulando pontos:\n\n" +
    "R1: Jogue 2 numeros e 1 operacao.\n" +
    "    (Ex: 5 + 3 = total inicial 8)\n\n" +
    "R2: Ative a condicao especial da mesa.\n" +
    "    Depois, jogue 1 operacao e 1 numero.\n\n" +
    "R3: Ative a condicao especial.\n" +
    "    Jogue suas ultimas 2 cartas.";

// =======================================================
// DESENHANDO O TÍTULO (Centralizado e Maior)
// =======================================================
draw_set_halign(fa_center);
draw_text_transformed(room_width / 2, 12, titulo, 1.5, 1.5, 0);

// =======================================================
// DESENHANDO O CORPO (Alinhado à Esquerda e com mais Espaçamento)
// =======================================================
draw_set_halign(fa_left);
draw_text_ext(35, 35, texto_regras, 13, 250);