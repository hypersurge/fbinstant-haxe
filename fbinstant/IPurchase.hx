package fbinstant;

extern interface IPurchase
{
	/**
	 * A developer-specified string, provided during the purchase of the product
	 * 
	 * @type {string}
	 * @memberOf IPurchase
	 */
	@:optional var developerPayload : String;
	/**
	 * The identifier for the purchase transaction
	 * 
	 * @type {string}
	 * @memberOf IPurchase
	 */
	var paymentID : String;
	/**
	 * The product's game-specified identifier
	 * 
	 * @type {string}
	 * @memberOf IPurchase
	 */
	var productID : String;
	/**
	 * Unix timestamp of when the purchase occurred
	 * 
	 * @type {string}
	 * @memberOf IPurchase
	 */
	var purchaseTime : String;
	/**
	 * A token representing the purchase that may be used to consume the purchase
	 * 
	 * @type {string}
	 * @memberOf IPurchase
	 */
	var purchaseToken : String;
	/**
	 * Server-signed encoding of the purchase request
	 * 
	 * @type {string}
	 * @memberOf IPurchase
	 */
	var signedRequest : String;
}