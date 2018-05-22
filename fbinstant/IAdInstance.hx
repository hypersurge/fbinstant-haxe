package fbinstant;
import js.Promise;

extern interface IAdInstance
{
	/**
	 * Return the Audience Network placement ID of this ad instance
	 * 
	 * @returns {string} The Audience Network placement ID of this ad instance
	 * 
	 * @memberOf IAdInstance
	 */
	function getPlacementID() : String;
	/**
	 * Preload the ad.
	 * The returned promise resolves when the preload completes, and rejects if it failed.
	 * 
	 * @returns {Promise<void>} A promise that the ad will complete preloading
	 * @throws Throws ADS_FREQUENT_LOAD, ADS_NO_FILL, INVALID_PARAM, NETWORK_FAILURE
	 * 
	 * @memberOf IAdInstance
	 */
	function loadAsync() : Promise<Void>;
	/**
	 * Present the ad.
	 * The returned promise resolves when user finished watching the ad, and rejects if it failed to present or was closed during the ad.
	 * 
	 * @returns {Promise<void>} A promise that user will watch the ad until the end
	 * @throws ADS_NOT_LOADED, INVALID_PARAM, NETWORK_FAILURE
	 * 
	 * @memberOf IAdInstance
	 */
	function showAsync() : Promise<Void>;
}