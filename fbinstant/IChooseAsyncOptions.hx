package fbinstant;

extern interface IChooseAsyncOptions
{
	/**
	 * The set of filters to apply to the context suggestions.
	 * 
	 * @type {ContextFilter[]}
	 * @memberOf IChooseAsyncOptions
	 */
	@:optional var filters : Array<ContextFilter>;
	/**
	 * The maximum number of participants that a suggested context should ideally have.
	 * 
	 * _(This property configures a hard limit)_
	 * 
	 * @type {number}
	 * @memberOf IChooseAsyncOptions
	 */
	@:optional var maxSize : Float;
	/**
	 * The minimum number of participants that a suggested context should ideally have.
	 * 
	 * _(This property configures a hard limit)_
	 * 
	 * @type {number}
	 * @memberOf IChooseAsyncOptions
	 */
	@:optional var minSize : Float;
}