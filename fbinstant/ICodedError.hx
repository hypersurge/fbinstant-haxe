extern interface ICodedError
{
	/**
	 * The relevant error code
	 * 
	 * @type {ErrorCodeType}
	 * @memberOf ICodedError
	 */
	var code : ErrorCodeType;
	/**
	 * A message describing the error
	 * 
	 * @type {string}
	 * @memberOf ICodedError
	 */
	var message : String;
}