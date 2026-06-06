// 1. Configurações Iniciais da Fonte
draw_set_font(fnt_number);
draw_set_color(c_white);

// 2. Textos separados
var titulo = "PONTUACAO E RECOMPENSAS";
var texto_pontuacao = 
    "Sua nota depende do alvo:\n\n" +
    "- 3 estrelas: Cravar o numero exato.\n" +
    "- 2 estrelas: Erro de ate 5 (+/-).\n" +
    "- 1 estrela: Erro de ate 10 (+/-).\n" +
    "  *Exibe sua porcentagem de precisao.\n\n" +
    "- Derrota: Erro maior que 10.\n\n" +
    "Eai, esta pronto para jogar?";

// =======================================================
// DESENHANDO O TÍTULO (Centralizado e Maior)
// =======================================================
draw_set_halign(fa_center);
// Diminuído levemente a escala para 1.3 apenas nesta tela para o título longo não cortar
draw_text_transformed(room_width / 2, 12, titulo, 1.3, 1.3, 0);

// =======================================================
// DESENHANDO O CORPO (Alinhado à Esquerda e com mais Espaçamento)
// =======================================================
draw_set_halign(fa_left);
draw_text_ext(35, 35, texto_pontuacao, 13, 250);