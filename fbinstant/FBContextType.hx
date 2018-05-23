package fbinstant;

/**
 * Represents the type of a game context.
 * 
 * @export
 * @enum {string}
 */
@:native("FBInstant.FBContextType")
@:enum extern abstract FBContextType( String )
{
	/**
	 * A facebook post
	 */
	var POST = "POST";
	/**
	 * A messenger thread
	 */
	var THREAD = "THREAD";
	/**
	 * A facebook group
	 */
	var GROUP = "GROUP";
	/**
	 * Default context, where the player is the only participant
	 */
	var SOLO = "SOLO";
}