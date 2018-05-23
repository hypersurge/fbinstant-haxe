package fbinstant;

/**
 * Represents the current platform that the user is playing on.
 *
 * @export
 * @enum {string}
 */
@:native("FBInstant.Platform")
@:enum extern abstract Platform( String )
{
	var IOS = "IOS";
	var ANDROID = "ANDROID";
	var WEB = "WEB";
	var MOBILE_WEB = "MOBILE_WEB";
}