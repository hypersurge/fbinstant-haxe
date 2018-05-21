extern interface ILeaderboardPlayer
{
	/**
	 * Gets the player's localized display name.
	 * 
	 * @returns {string} The player's localized display name.
	 * 
	 * @memberOf ILeaderboardPlayer
	 */
	function getName() : String;
	/**
	 * Returns a url to the player's public profile photo.
	 * 
	 * @returns {string} Url to the player's public profile photo.
	 * 
	 * @memberOf ILeaderboardPlayer
	 */
	function getPhoto() : String;
	/**
	 * Gets the game's unique identifier for the player.
	 * 
	 * @returns {string} The game-scoped identifier for the player.
	 * 
	 * @memberOf ILeaderboardPlayer
	 */
	function getID() : String;
}