// 1. Configurações da Fonte
draw_set_font(fnt_tutorial);
draw_set_color(c_white);

// =======================================================
// DESENHANDO O TÍTULO (Centralizado)
// =======================================================
draw_set_halign(fa_center);
var titulo = "PONTUACAO E RECOMPENSAS";
draw_text_transformed(room_width / 2, 6, titulo, 1.1, 1.1, 0);


// =======================================================
// DESENHANDO AS REGRAS (Alinhado à Esquerda)
// =======================================================
draw_set_halign(fa_left);

var texto_pontuacao = 
    "Sua nota depende do alvo:\n\n" +
    "- 3 ESTRELAS: Cravar o numero exato.\n" +
    "- 2 ESTRELAS: Erro de ate 5 (+/-).\n" +
    "- 1 ESTRELA: Erro de ate 10 (+/-).\n" +
    "  *Exibe sua porcentagem de precisao.\n\n" +
    "- DERROTA: Erro maior que 10.\n\n" +
    "E ai, esta pronto para jogar?";

// Desenha o texto super compacto
draw_text_ext(20, 22, texto_pontuacao, 9, 280);