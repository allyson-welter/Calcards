function square_checked(square = self){
	switch(square.squareType){
		case "belettiMode":
			global.belettiMode = !global.belettiMode;
			square.image_index = global.belettiMode;
			break;
		case "translateHex":
			var dec_index = 2;
			var bin_index = 3;
			var base = 0;
			if(square.image_index == 0){
				base = 10;
				square.image_index = dec_index;
				square.text = "Traduzir para base binária (12 bits em complemento de dois)";
				square.box_x_size = 21;
				square.box_x_offset = 33;
				
			}
			else if(image_index == dec_index){
				base = 2;
				obj_translator.translated_random_number = obj_translator.number_bin;
				square.image_index = bin_index;
				square.text = "Não traduzir a base hexadecimal";
				normal_config_rectangle(square);
			}
			else{
				obj_translator.translated_random_number = "";
				square.image_index = 0;
				square.text = "Traduzir para base decimal";
				normal_config_rectangle(square);
			}
			obj_translator.translateBase = base;
			update_translated_info();
			break;
	}
}

