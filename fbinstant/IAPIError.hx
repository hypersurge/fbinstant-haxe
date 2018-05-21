extern interface IAPIError
{
	/**
	 * The relevant error code
	 * 
	 * @type {ErrorCodeType}
	 * @memberOf IAPIError
	 */
	var code : ErrorCodeType;
	/**
	 * A message describing the error
	 * 
	 * @type {string}
	 * @memberOf IAPIError
	 */
	var message : String;
}