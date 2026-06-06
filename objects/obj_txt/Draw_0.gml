// 1. Configurações Iniciais da Fonte
draw_set_font(fnt_number);
draw_set_color(c_white);

// 2. Textos separados (Título em maiúsculas, Corpo com maiúsculas apenas no início das sentenças)
var titulo = "TUTORIAL: CALCARDS";
var corpo = "Bem-vindo ao Calcards. Neste tutorial, voce aprendera o necessario para entender o jogo e joga-lo da maneira correta.\n\nQuando quiser ir para a proxima pagina do tutorial, clique em confirmar.";

// =======================================================
// DESENHANDO O TÍTULO (Centralizado e Maior)
// =======================================================
draw_set_halign(fa_center);

// Mantido o tamanho original de 1.5 para a tela de 320x180
draw_text_transformed(room_width / 2, 12, titulo, 1.5, 1.5, 0);


// =======================================================
// DESENHANDO O CORPO (Alinhado à Esquerda e com mais Espaçamento)
// =======================================================
draw_set_halign(fa_left);

// AJUSTES PARA A TELA 320x180:
// X inicial: 35 (posição mais centralizada para a direita, como configurado antes)
// Y inicial: 35 (ajustado para dar espaço ao título maior)
// Espaçamento entre linhas: Aumentado para 13 (linhas bem mais espaçadas e elegantes)
// Largura máxima: 250 (evita que o texto encoste na borda direita)
draw_text_ext(35, 35, corpo, 13, 250);