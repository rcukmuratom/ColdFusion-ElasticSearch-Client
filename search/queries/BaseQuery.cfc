component accessors="true"{

	public function init(numeric from = 0, numeric size = 0){
		for(var i IN arguments){
			variables[i] = arguments[i];
		}
		
		return this;
	}

	public function arrayToStringArray(required array arr){
		var tempList = "";
		for(var t=1; t<=arrayLen(arguments.arr); t++){
			tempList = listAppend(tempList, '"arguments.arr[t]"');
		}
		return '[#tempList#]';
	}

	public function onMissingMethod(required string MissingMethodName, required array MissingMethodArguments){
		variables[arguments.MissingMethodName] = Arguments.MissingMethodArguments[1];
		return this;
	}

}