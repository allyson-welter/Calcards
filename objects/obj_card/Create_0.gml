_selected = false; // variavel pra saber se a carta foi selecionada (se ela ta no meio)
image_xscale = 0.35;
image_yscale = 0.35;
is_op = false; // variavel pra saber se a carta é uma operação ou não
normal_index = image_index;
// pequena explicação desse normal index: para fazer a carta subir, eu subi um pouco o sprite
// da carta e coloquei no frame seguinte, então toda vez que o jogador coloca o mouse em cima, 
// eu faço o sprite da carta ir pro frame seguinte. Portanto, esse normal index é o frame
// em que a carta está na posição "normal" dela (sem o jogador colocar o mouse em cima)