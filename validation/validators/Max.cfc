component extends="coldmvc.validation.Validator" {

	public boolean function isValid(required any value, required struct options) {

		if (isSimpleValue(arguments.value) && arguments.value == "") {
			return true;
		}

		return coldmvc.valid.max(arguments.value, arguments.options.value);

	}

	public string function getMessage() {

		return "The value for ${name} must be less than or equal to ${value}.";

	}

}