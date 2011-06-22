/**
 * @accessors true
 */
component {

	property collectionParser;

	public void function startRequest() {

		if (coldmvc.params.isEmpty()) {

			var collection = {};

			if (isDefined("form")) {
				structAppend(collection, form);
				structDelete(collection, "fieldnames");
			}

			if (isDefined("url")) {
				structAppend(collection, url);
			}

			// remove reserved global variables
			structDelete(collection, "$");
			structDelete(collection, "coldmvc");

			coldmvc.params.set(collectionParser.parseCollection(collection));

		}

	}

}