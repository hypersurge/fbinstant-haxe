package fbinstant;

/**
 * Indicates the intent of the share.
 * 
 * @export
 * @enum {string}
 */
@:native("FBInstant.SharePayloadIntent")
@:enum extern abstract SharePayloadIntent( String )
{
	var INVITE = "INVITE";
	var REQUEST = "REQUEST";
	var CHALLENGE = "CHALLENGE";
	var SHARE = "SHARE";
}