function get_result_operationF(_num1, _func){
	_result = 0;
	
	switch(_func){
		case 0: // sprite de -x
			_result = -1*(_num1);
			break;
		case 1: // sprite de x^x
			_result = power(_num1, _num1);
			break;
		case 2: // sprite de x!
			_result = fac(_num1);
			break;
		case 3: // sprite de raiz x-ésima de x
			_result = power(_num1, 1/(_num1));
			break;
		case 4: // sprite do NOT
			_result = -(_num1 + 1);
			break;
	}
	_result = get_bounded_result(_result);
	return int64(_result);
}
function get_result_operationN(_num1, _num2, _op){
	_result = 0;

	switch(_op){
		case 0: // sprite da soma
			_result = _num1 + _num2;
			break;
		case 1: // sprite da subtracao
			_result = _num1 - _num2;
			break;
		case 2: // sprite da multiplicacao
			_result = _num1*_num2;
			break;
		case 3: // sprite da divisao
			_result = (_num1)/(_num2);
			break;
		case 4: // sprite da potencia
			_result = power((_num1), (_num2))
			break;
		case 5: // sprite da raiz
			_result = (_num1)*sqrt(_num2);
			break;
		case 6: // sprite OR
			_result =  _num1 | _num2;
			break;
		case 7: // sprite AND
			_result = _num1 & _num2;
			break;
	}
	_result = get_bounded_result(_result); // limita o resultado pra 999 ou -999
	return int64(_result);
}
function is_expression_valid(_num1, _num2 = 0, _op, has_function = false){
	if(!has_function){
		if(_op == 3 && _num2 == 0) // divisao por 0
			return false;
		if(_op == 5 && _num2 < 0) // raiz quadrada de negativo
			return false;
	}
	else{
		if(_op == 1 && _num1 == 0) // 0^0
			return false;
		if(_op == 2 && _num1 < 0) // fatorial de numero negativo
			return false;
		if(_op == 3 && _num1 < 0 && _num1 % 2 == 0) // raiz n-ésima de numero negativo, n par
			return false;
	}
	return true;
}

function fac(_x){
	_res = 1;
	for(i = 2; i <= _x; i++)
		_res *= i;
	return _res;
}

function get_bounded_result(_result){
	if(_result > 999)
		return 999;
	else if(_result < -999)
		return -999;
	else
		return _result;
}