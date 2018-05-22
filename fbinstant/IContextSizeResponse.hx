package fbinstant;

extern interface IContextSizeResponse
{
	/**
	 * The answer field is true if the current context size is between the minSize and maxSize values
	 * that are specified in the object, and false otherwise.
	 * 
	 * @type {boolean}
	 * @memberOf IContextSizeResponse
	 */
	var answer : Bool;
	/**
	 * The minimum size of the context (it can be null)
	 * 
	 * @type {number}
	 * @memberOf IContextSizeResponse
	 */
	@:optional var minSize : Float;
	/**
	 * The maximum size of the context (it can be null)
	 * 
	 * @type {number}
	 * @memberOf IContextSizeResponse
	 */
	@:optional var maxSize : Float;
}