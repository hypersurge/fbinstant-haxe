package fbinstant;

extern interface ILeaderboardEntry
{
	/**
	 * Gets the score associated with the entry.
	 * 
	 * @returns {number} Returns an integer score value.
	 * 
	 * @memberOf ILeaderboardEntry
	 */
	function getScore() : Float;
	/**
	 * Gets the score associated with the entry, formatted with the score format associated with the leaderboard.
	 * 
	 * @returns {string} Returns a formatted score.
	 * 
	 * @memberOf ILeaderboardEntry
	 */
	function getFormattedScore() : String;
	/**
	 * Gets the timestamp of when the leaderboard entry was last updated.
	 * 
	 * @returns {number} Returns a Unix timestamp.
	 * 
	 * @memberOf ILeaderboardEntry
	 */
	function getTimestamp() : Float;
	/**
	 * Gets the rank of the player's score in the leaderboard.
	 * 
	 * @returns {number} Returns the entry's leaderboard ranking.
	 * 
	 * @memberOf ILeaderboardEntry
	 */
	function getRank() : Float;
	/**
	 * Gets the developer-specified payload associated with the score, or null if one was not set.
	 * 
	 * @returns {string} An optional developer-specified payload associated with the score.
	 * 
	 * @memberOf ILeaderboardEntry
	 */
	function getExtraData() : String;
	/**
	 * Gets information about the player associated with the entry.
	 * 
	 * @returns {ILeaderboardPlayer} The information about the player associated with the entry.
	 * 
	 * @memberOf ILeaderboardEntry
	 */
	function getPlayer() : ILeaderboardPlayer;
}