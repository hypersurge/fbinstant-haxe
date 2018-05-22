package fbinstant;

extern interface IPurchaseConfig
{
	/**
	 * The identifier of the product to purchase
	 * 
	 * @type {string}
	 * @memberOf IPurchaseConfig
	 */
	var productID : String;
	/**
	 * An optional developer-specified payload, to be included in the returned purchase's signed request.
	 * 
	 * @type {string}
	 * @memberOf IPurchaseConfig
	 */
	@:optional var developerPayload : String;
}