package fbinstant;

/**
 * A filter that may be applied to a Context Choose operation
 * 
 * @export
 * @enum {string}
 */
@:native("")
extern enum ContextFilter
{
	/**
	 * Prefer to only surface contexts the game has not been played in before.
	 */
	NEW_CONTEXT_ONLY = "NEW_CONTEXT_ONLY";
	/**
	 * Include the "Existing Challenges" section, which surfaces actively played-in contexts that the player is a part of.
	 */
	INCLUDE_EXISTING_CHALLENGES = "INCLUDE_EXISTING_CHALLENGES";
	/**
	 * In sections containing individuals, prefer people who have not played the game.
	 */
	NEW_PLAYERS_ONLY = "NEW_PLAYERS_ONLY";
}