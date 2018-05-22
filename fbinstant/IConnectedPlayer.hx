package fbinstant;

extern interface IConnectedPlayer
{
	/**
	 * Get the id of the connected player.
	 * 
	 * @returns {string} The ID of the connected player
	 * 
	 * @memberOf IConnectedPlayer
	 */
	function getID() : String;
	/**
	 * Get the player's full name.
	 * 
	 * @returns {string} The player's full name
	 * 
	 * @memberOf IConnectedPlayer
	 */
	function getName() : String;
	/**
	 * Get the player's public profile photo.
	 * 
	 * @returns {string} A url to the player's public profile photo
	 * 
	 * @memberOf IConnectedPlayer
	 */
	function getPhoto() : String;
}