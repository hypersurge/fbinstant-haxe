extern interface IFBPlayer
{
	/**
	 * A unique identifier for the player.
	 * A Facebook user's player ID will remain constant, and is scoped to a specific game.
	 * This means that different games will have different player IDs for the same user.
	 * This function should not be called until FBInstant.initializeAsync() has resolved.
	 * 
	 * @returns {string} A unique identifier for the player.
	 * 
	 * @memberOf IFBPlayer
	 */
	function getID() : String;
	/**
	 * Fetch the player's unique identifier along with a signature that verifies that the identifier indeed comes from Facebook without being tampered with.
	 * This function should not be called until FBInstant.initializeAsync() has resolved.
	 * 
	 * @returns {Promise<IFBSignedPlayerInfo>} A promise that resolves with an ISignedPlayerInfo object.
	 * @throws INVALID_PARAM, NETWORK_FAILURE, CLIENT_UNSUPPORTED_OPERATION
	 * 
	 * @memberOf IFBPlayer
	 */
	function getSignedPlayerInfoAsync(requestPayload:String) : Promise<ISignedPlayerInfo>;
	/**
	 * The player's localized display name.
	 * This function should not be called until FBInstant.startGameAsync() has resolved.
	 * 
	 * @returns {string} The player's localized display name.
	 * 
	 * @memberOf IFBPlayer
	 */
	function getName() : String;
	/**
	 * A url to the player's public profile photo. The photo will always be a square, and with dimensions of at least 200x200. When rendering it in the game, the exact dimensions should never be assumed to be constant. It's recommended to always scale the image to a desired size before rendering. The value will always be null until FBInstant.startGameAsync() resolves.
	 * 
	 * WARNING: Due to CORS, using these photos in the game canvas can cause it to be tainted, which will prevent the canvas data from being extracted. To prevent this, set the cross-origin attribute of the images you use to 'anonymous'.
	 * 
	 * _Returns a signed url string, which seems to expire after some time_
	 * 
	 * @returns {string} Url to the player's public profile photo.
	 * 
	 * @memberOf IFBPlayer
	 */
	function getPhoto() : String;
	/**
	 * Retrieve data from the designated cloud storage of the current player.
	 * 
	 * @returns {Promise<Object>} A promise that resolves with an object which contains the current key-value pairs for each key specified in the input array, if they exist.
	 * @throws INVALID_PARAM, NETWORK_FAILURE, CLIENT_UNSUPPORTED_OPERATION
	 * 
	 * @memberOf IFBPlayer
	 */
	function getDataAsync(keys:Array<String>) : Promise<Dynamic>;
	/**
	 * Set data to be saved to the designated cloud storage of the current player.
	 * The game can store up to 1MB of data for each unique player.
	 * 
	 * NOTE: The promise resolving does not necessarily mean that the input has already been persisted.
	 * Rather, it means that the data was valid and has been scheduled to be saved.
	 * It also guarantees that all values that were set are now available in player.getDataAsync.
	 * 
	 * @returns {Promise<void>} A promise that resolves when the input values are set.
	 * @throws INVALID_PARAM, NETWORK_FAILURE, PENDING_REQUEST, CLIENT_UNSUPPORTED_OPERATION
	 * 
	 * @memberOf IFBPlayer
	 */
	function setDataAsync(data:Dynamic) : Promise<Void>;
	/**
	 * Immediately flushes any changes to the player data to the designated cloud storage.
	 * This function is expensive, and should primarily be used for critical changes where
	 * persistence needs to be immediate and known by the game.
	 * Non-critical changes should rely on the platform to persist them in the background.
	 * 
	 * NOTE: Calls to player.setDataAsync will be rejected while this function's result is pending.
	 * 
	 * @returns {Promise<void>} A promise that resolves when changes have been persisted successfully, and rejects if the save fails.
	 * @throws INVALID_PARAM, NETWORK_FAILURE, PENDING_REQUEST, CLIENT_UNSUPPORTED_OPERATION
	 * 
	 * @memberOf IFBPlayer
	 */
	function flushDataAsync() : Promise<Void>;
	/**
	 * Retrieve stats from the designated cloud storage of the current player.
	 * 
	 * @returns {Promise<Object>} A promise that resolves with an object which contains the current key-value pairs for each key specified in the input array, if they exist.
	 * @throws INVALID_PARAM, NETWORK_FAILURE, CLIENT_UNSUPPORTED_OPERATION
	 * 
	 * @memberOf IFBPlayer
	 */
	function getStatsAsync(?keys:Array<String>) : Promise<Dynamic>;
	/**
	 * Set stats to be saved to the designated cloud storage of the current player.
	 * 
	 * @returns {Promise<void>} A promise that resolves when the input values are set. NOTE: The promise resolving does not necessarily mean that the input has already been persisted. Rather, it means that the data was validated and has been scheduled to be saved. It also guarantees that all values that were set are now available in player.getStatsAsync.
	 * @throws INVALID_PARAM, NETWORK_FAILURE, PENDING_REQUEST, CLIENT_UNSUPPORTED_OPERATION
	 * 
	 * @memberOf IFBPlayer
	 */
	function setStatsAsync(stats:Dynamic) : Promise<Void>;
	/**
	 * Increment stats saved in the designated cloud storage of the current player.
	 * 
	 * @returns {Promise<Object>} A promise that resolves with an object which contains the updated key-value pairs for each key specified in the input dictionary. NOTE: The promise resolving does not necessarily mean that the changes have already been persisted. Rather, it means that the increments were valid and have been scheduled to be performed. It also guarantees that all values that were incremented are now available in player.getStatsAsync.
	 * @throws INVALID_PARAM, NETWORK_FAILURE, PENDING_REQUEST, CLIENT_UNSUPPORTED_OPERATION
	 * 
	 * @memberOf IFBPlayer
	 */
	function incrementStatsAsync(increments:Dynamic) : Promise<Dynamic>;
	/**
	 * Fetches an array of ConnectedPlayer objects containing information about players that are connected to the current player.
	 * 
	 * @returns {Promise<IConnectedPlayer[]>} A promise that resolves with a list of connected player objects. NOTE: This promise will not resolve until FBInstant.startGameAsync() has resolved.
	 * @throws NETWORK_FAILURE, CLIENT_UNSUPPORTED_OPERATION
	 * 
	 * @memberOf IFBPlayer
	 */
	function getConnectedPlayersAsync() : Promise<Array<IConnectedPlayer>>;
}