// 1. Configurações da Fonte
draw_set_font(fnt_tutorial);
draw_set_color(c_white);

// =======================================================
// DESENHANDO O TÍTULO (Centralizado)
// =======================================================
draw_set_halign(fa_center);
var titulo = "COMO JOGAR (3 RODADAS)";
draw_text_transformed(room_width / 2, 8, titulo, 1.2, 1.2, 0);


// =======================================================
// DESENHANDO O RESUMO (Alinhado à Esquerda)
// =======================================================
draw_set_halign(fa_left);

var texto_regras = 
    "O jogo acumula pontos ao longo de 3 rodadas:\n\n" +
    "- RODADA 1: Jogue 2 Numeros e 1 Operacao.\n" +
    "  Ex: 5 + 3 = seu resultado inicial passa a ser 8.\n\n" +
    "- RODADA 2: O jogo traz uma Condicao Especial.\n" +
    "  Depois, jogue 1 Operacao e 1 Numero para alterar o total.\n\n" +
    "- RODADA 3: Enfrente outra Condicao Especial.\n" +
    "  Jogue as ultimas cartas (1 Operacao e 1 Numero) para o total final.";

// Desenha o texto compacto começando em X=20, Y=25 e largura máxima de 280
draw_text_ext(20, 25, texto_regras, 9, 280);