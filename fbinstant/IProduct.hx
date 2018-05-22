package fbinstant;

extern interface IProduct
{
	/**
	 * The title of the product
	 * 
	 * @type {string}
	 * @memberOf IProduct
	 */
	var title : String;
	/**
	 * The product's game-specified identifier
	 * 
	 * @type {string}
	 * @memberOf IProduct
	 */
	var productID : String;
	/**
	 * The product description
	 * 
	 * @type {string}
	 * @memberOf IProduct
	 */
	@:optional var description : String;
	/**
	 * A link to the product's associated image
	 * 
	 * @type {string}
	 * @memberOf IProduct
	 */
	@:optional var imageURI : String;
	/**
	 * The price of the product
	 * 
	 * @type {string}
	 * @memberOf IProduct
	 */
	var price : String;
	/**
	 * The currency code for the product
	 * 
	 * @type {string}
	 * @memberOf IProduct
	 */
	var priceCurrencyCode : String;
}