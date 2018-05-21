/**
 * Represents the type of the update action to perform.
 * 
 * @export
 * @enum {number}
 */
@:native("")
extern enum UpdateAction
{
	/**
	 * A custom update, with all content specified by the game.
	 */
	CUSTOM = "CUSTOM";
	/**
	 * An update associated with an Instant Game leaderboard.
	 */
	LEADERBOARD = "LEADERBOARD";
}