/**
 * @extends coldmvc.validation.Constraint
 * @constraint assertFalse
 * @message The value for ${property} must be false.
 */
component {

	public boolean function isValid(required any value) {

		if (isSimpleValue(arguments.value) && arguments.value == "") {
			return true;
		}

		if (isBoolean(arguments.value) && arguments.value) {
			return true;
		}

		return false;

	}

}