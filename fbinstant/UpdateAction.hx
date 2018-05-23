package fbinstant;

/**
 * Represents the type of the update action to perform.
 * 
 * @export
 * @enum {number}
 */
@:native("FBInstant.UpdateAction")
@:enum extern abstract UpdateAction( String )
{
	/**
	 * A custom update, with all content specified by the game.
	 */
	var CUSTOM = "CUSTOM";
	/**
	 * An update associated with an Instant Game leaderboard.
	 */
	var LEADERBOARD = "LEADERBOARD";
}