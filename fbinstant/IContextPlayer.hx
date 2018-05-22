package fbinstant;

extern interface IContextPlayer
{
	/**
	 * Get the id of the context player.
	 * 
	 * @returns {string} The ID of the context player
	 * 
	 * @memberOf IContextPlayer
	 */
	function getID() : String;
	/**
	 * Get the player's localized display name.
	 * 
	 * @returns {string} The player's localized display name.
	 * 
	 * @memberOf IContextPlayer
	 */
	function getName() : String;
	/**
	 * Get the player's public profile photo.
	 * 
	 * @returns {string} A url to the player's public profile photo
	 * 
	 * @memberOf IContextPlayer
	 */
	function getPhoto() : String;
}