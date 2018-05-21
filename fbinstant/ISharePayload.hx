extern interface ISharePayload
{
	/**
	 * Indicates the intent of the share.
	 * 
	 * @type {SharePayloadIntent}
	 * @memberOf ISharePayload
	 */
	var intent : SharePayloadIntent;
	/**
	 * A base64 encoded image to be shared.
	 * 
	 * @type {string}
	 * @memberOf ISharePayload
	 */
	var image : String;
	/**
	 * A text message to be shared.
	 * 
	 * @type {string}
	 * @memberOf ISharePayload
	 */
	var text : String;
	/**
	 * A blob of data to attach to the share.
	 * All game sessions launched from the share will be able to access this blob through FBInstant.getEntryPointData().
	 * 
	 * @type {Object}
	 * @memberOf ISharePayload
	 */
	@:optional var data : Dynamic;
}