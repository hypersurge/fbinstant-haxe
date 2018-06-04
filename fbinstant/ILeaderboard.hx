package fbinstant;
import js.Promise;

extern interface ILeaderboard
{
	/**
	 * The name of the leaderboard.
	 * 
	 * @returns {string} The name of the leaderboard.
	 * 
	 * @memberOf ILeaderboard
	 */
	function getName() : String;
	/**
	 * The ID of the context that the leaderboard is associated with, or null if the leaderboard is not tied to a particular context.
	 * 
	 * @returns {string} The ID of the context that the leaderboard is associated with, or null if the leaderboard is not tied to a particular context.
	 * 
	 * @memberOf ILeaderboard
	 */
	function getContextID() : String;
	/**
	 * Fetches the total number of player entries in the leaderboard.
	 * 
	 * @returns {Promise<number>} A unique identifier for the player.
	 * @throws NETWORK_FAILURE
	 * 
	 * @memberOf ILeaderboard
	 */
	function getEntryCountAsync() : Promise<Float>;
	/**
	 * Updates the player's score.
	 * If the player has an existing score, the old score will only be replaced if the new score is better than it.
	 * NOTE: If the leaderboard is associated with a specific context,
	 * the game must be in that context to set a score for the player.
	 * 
	 * @returns {Promise<ILeaderboardEntry>} Resolves with the current leaderboard entry for the player after the update.
	 * @throws LEADERBOARD_WRONG_CONTEXT, NETWORK_FAILURE, INVALID_PARAM, INVALID_OPERATION
	 * 
	 * @memberOf ILeaderboard
	 */
	function setScoreAsync(score:Float, ?extraData:String) : Promise<ILeaderboardEntry>;
	/**
	 * Retrieves the leaderboard's entry for the current player, or null if the player has not set one yet.
	 * 
	 * @returns {Promise<ILeaderboardEntry>} Resolves with the current leaderboard entry for the player. It can be null.
	 * @throws NETWORK_FAILURE, INVALID_OPERATION
	 * 
	 * @memberOf ILeaderboard
	 */
	function getPlayerEntryAsync() : Promise<ILeaderboardEntry>;
	/**
	 * Retrieves a set of leaderboard entries, ordered by score ranking in the leaderboard.
	 * 
	 * @returns {Promise<ILeaderboardEntry[]>} Resolves with the leaderboard entries that match the query.
	 * @throws NETWORK_FAILURE
	 * 
	 * @memberOf ILeaderboard
	 */
	function getEntriesAsync(count:Float, offset:Float) : Promise<Array<ILeaderboardEntry>>;
	/**
	 * Retrieves the leaderboard score entries of the current player's connected players (including the current player), ordered by local rank within the set of connected players.
	 * 
	 * @returns {Promise<Array<ILeaderboardEntry>>} Resolves with the leaderboard entries that match the query.
	 * @throws NETWORK_FAILURE, RATE_LIMITED
	 * 
	 * @memberOf ILeaderboard
	 */
	function getConnectedPlayerEntriesAsync(count:Float, offset:Float) : Promise<Array<ILeaderboardEntry>>;
}