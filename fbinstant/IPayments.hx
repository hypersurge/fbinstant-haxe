package fbinstant;
import js.Promise;

extern interface IPayments
{
	/**
	 * Fetches the game's product catalog.
	 * 
	 * @returns {Promise<IProduct[]>} The set of products that are registered to the game.
	 * @throws CLIENT_UNSUPPORTED_OPERATION, PAYMENTS_NOT_INITIALIZED, NETWORK_FAILURE
	 * 
	 * @memberOf IPayments
	 */
	function getCatalogAsync() : Promise<Array<IProduct>>;
	/**
	 * Begins the purchase flow for a specific product.
	 * 
	 * @returns {Promise<IPurchase>} A Promise that resolves when the product is successfully purchased by the player. Otherwise, it rejects.
	 * @throws CLIENT_UNSUPPORTED_OPERATION, PAYMENTS_NOT_INITIALIZED, INVALID_PARAM, NETWORK_FAILURE
	 * 
	 * @memberOf IPayments
	 */
	function purchaseAsync(purchaseConfig:IPurchaseConfig) : Promise<IPurchase>;
	/**
	 * Fetches all of the player's unconsumed purchases.
	 * As a best practice, the game should fetch the current player's purchases as soon as
	 * the client indicates that it is ready to perform payments-related operations.
	 * The game can then process and consume any purchases that are waiting to be consumed.
	 * 
	 * @returns {Promise<IPurchase[]>} The set of purchases that the player has made for the game.
	 * @throws CLIENT_UNSUPPORTED_OPERATION, PAYMENTS_NOT_INITIALIZED, NETWORK_FAILURE
	 * 
	 * @memberOf IPayments
	 */
	function getPurchasesAsync() : Promise<Array<IPurchase>>;
	/**
	 * Consumes a specific purchase belonging to the current player.
	 * Before provisioning a product's effects to the player,
	 * the game should request the consumption of the purchased product.
	 * Once the purchase is successfully consumed, the game should immediately
	 * provide the player with the effects of their purchase.
	 * 
	 * @returns {Promise<void>} A Promise that resolves when the purchase has been consumed successfully.
	 * @throws CLIENT_UNSUPPORTED_OPERATION, PAYMENTS_NOT_INITIALIZED, INVALID_PARAM, NETWORK_FAILURE
	 * 
	 * @memberOf IPayments
	 */
	function consumePurchaseAsync(purchaseToken:String) : Promise<Void>;
	/**
	 * Sets a callback to be triggered when Payments operations are available.
	 * 
	 * @memberOf IPayments
	 */
	function onReady(callback:haxe.Constraints.Function) : Void;
}