package fbinstant;
import js.Promise;

extern interface IFBInstant
{
	/**
	 * The current player
	 * 
	 * @type {IFBPlayer}
	 * @memberOf IFBInstant
	 */
	var player : IFBPlayer;
	/**
	 * The current game context
	 * 
	 * @type {IFBContext}
	 * @memberOf IFBInstant
	 */
	var context : IFBContext;
	/**
	 * The payments instance
	 * 
	 * @type {IPayments}
	 * @memberOf IFBInstant
	 */
	var payments : IPayments;

	/**
	 * Attempt to create an instance of interstitial ad.
	 * This instance can then be preloaded and presented.
	 * 
	 * @returns {Promise<IAdInstance>} A promise that resolves with an IAdInstance, or rejects with a CodedError if it couldn't be created.
	 * @throws ADS_TOO_MANY_INSTANCES, CLIENT_UNSUPPORTED_OPERATION
	 * 
	 * @memberOf IFBInstant
	 */
	function getInterstitialAdAsync(placementID:String) : Promise<IAdInstance>;
	/**
	 * Attempt to create an instance of rewarded video.
	 * This instance can then be preloaded and presented.
	 * 
	 * @returns {Promise<IAdInstance>} A promise that resolves with an IAdInstance, or rejects with a CodedError if it couldn't be created.
	 * @throws ADS_TOO_MANY_INSTANCES, CLIENT_UNSUPPORTED_OPERATION
	 * 
	 * @memberOf IFBInstant
	 */
	function getRewardedVideoAsync(placementID:String) : Promise<IAdInstance>;
	/**
	 * Attempts to match the current player with other users looking for people to play with.
	 * If successful the a new Messenger group thread will be created containing the matched players and the player will be context switched to that thread.
	 * The default minimum and maximum number of players in one matched thread are 2 and 20 respectively, depending on how many players are trying to get matched around the same time. The values can be changed in fbapp-config.json.
	 * 
	 * @returns {Promise<void>} A promise that resolves when the player has been added to a group thread and switched into the thread's context.
	 * @throws INVALID_PARAM, NETWORK_FAILURE, USER_INPUT, PENDING_REQUEST, CLIENT_UNSUPPORTED_OPERATION, INVALID_OPERATION
	 * 
	 * @memberOf IFBInstant
	 */
	function matchPlayerAsync(?matchTag:String, ?switchContextWhenMatched:Bool) : Promise<Void>;
	/**
	 * [IN CLOSED BETA] Checks if the current player is eligible for the matchPlayerAsync API.
	 * 
	 * @returns {Promise<boolean>} A promise that resolves with true if the player is eligible to match with other players and false otherwise.
	 * @throws NETWORK_FAILURE, CLIENT_UNSUPPORTED_OPERATION
	 * 
	 * @memberOf IFBInstant
	 */
	function checkCanPlayerMatchAsync() : Promise<Bool>;
	/**
	 * Fetch a specific leaderboard belonging to this Instant Game.
	 * 
	 * @returns {Promise<ILeaderboard>} A promise that resolves with the matching leaderboard, rejecting if one is not found.
	 * @throws LEADERBOARD_NOT_FOUND, NETWORK_FAILURE, CLIENT_UNSUPPORTED_OPERATION, INVALID_OPERATION, INVALID_PARAM
	 * 
	 * @memberOf IFBInstant
	 */
	function getLeaderboardAsync(name:String) : Promise<ILeaderboard>;
	/**
	 * The current locale. See https://www.facebook.com/translations/FacebookLocales.xml for a complete list of supported locale values.
	 * Use this to determine what language the current game should be localized with.
	 * The value will always be null until FBInstant.initializeAsync() resolves.
	 * 
	 * @returns {string} The current locale.
	 * 
	 * @memberOf IFBInstant
	 */
	function getLocale() : String;
	/**
	 * The platform on which the game is currently running.
	 * The value will always be null until FBInstant.initializeAsync() resolves.
	 * 
	 * @returns {Platform} The platform
	 * 
	 * @memberOf IFBInstant
	 */
	function getPlatform() : Platform;
	/**
	 * The string representation of this SDK version.
	 * 
	 * @returns {string} The SDK version.
	 * 
	 * @memberOf IFBInstant
	 */
	function getSDKVersion() : String;
	/**
	 * Initializes the SDK library. This should be called before any other SDK functions.
	 * 
	 * @returns {Promise<void>} A promise that resolves when the SDK is ready to use.
	 * @throws INVALID_OPERATION
	 * 
	 * @memberOf IFBInstant
	 */
	function initializeAsync() : Promise<Void>;
	/**
	 * Report the game's initial loading progress.
	 * 
	 * @memberOf IFBInstant
	 */
	function setLoadingProgress(percentage:Float) : Void;
	/**
	 * Provides a list of API functions that are supported by the client
	 * 
	 * @returns {string[]} List of API functions that the client explicitly supports
	 * 
	 * @memberOf IFBInstant
	 */
	function getSupportedAPIs() : Array<String>;
	/**
	 * Returns any data object associated with the entry point that the game was launched from.
	 * 
	 * The contents of the object are developer-defined, and can occur from entry points on different platforms.
	 * This will return null for older mobile clients, as well as when there is no data associated with
	 * the particular entry point.
	 * 
	 * @returns {*} Data associated with the current entry point.
	 * 
	 * @memberOf IFBInstant
	 */
	function getEntryPointData() : Dynamic;
	/**
	 * Returns the entry point that the game was launched from
	 * 
	 * @returns {string} The name of the entry point from which the user started the game
	 * 
	 * @memberOf IFBInstant
	 */
	function getEntryPointAsync() : String;
	/**
	 * Sets the data associated with the individual gameplay session for the current context.
	 * 
	 * This function should be called whenever the game would like to update the current session data.
	 * This session data may be used to populate a variety of payloads, such as game play webhooks.
	 * 
	 * @memberOf IFBInstant
	 */
	function setSessionData(sessionData:Dynamic) : Void;
	/**
	 * This indicates that the game has finished initial loading and is ready to start.
	 * Context information will be up-to-date when the returned promise resolves.
	 * 
	 * @returns {Promise<void>} A promise that resolves when the game should start.
	 * @throws INVALID_PARAM, CLIENT_UNSUPPORTED_OPERATION
	 * 
	 * @memberOf IFBInstant
	 */
	function startGameAsync() : Promise<Void>;
	/**
	 * This invokes a dialog to let the user share specified content, either as a message in Messenger
	 * or as a post on the user's timeline. A blob of data can be attached to the share which every
	 * game session launched from the share will be able to access from FBInstant.getEntryPointData().
	 * This data must be less than or equal to 1000 characters when stringified.
	 * The user may choose to cancel the share action and close the dialog, and the returned promise
	 * will resolve when the dialog is closed regardless if the user actually shared the content or not.
	 * 
	 * @returns {Promise<void>} A promise that resolves when the share is completed or cancelled.
	 * @throws INVALID_PARAM, NETWORK_FAILURE, PENDING_REQUEST, CLIENT_UNSUPPORTED_OPERATION, INVALID_OPERATION
	 * 
	 * @memberOf IFBInstant
	 */
	function shareAsync(payload:ISharePayload) : Promise<Void>;
	/**
	 * Informs Facebook of an update that occurred in the game.
	 * This will temporarily yield control to Facebook and Facebook will decide what to do based on what the update is.
	 * The returned promise will resolve/reject when Facebook returns control to the game.
	 * 
	 * @returns {Promise<void>} A promise that resolves when Facebook gives control back to the game.
	 * @throws INVALID_PARAM, PENDING_REQUEST, INVALID_OPERATION
	 * 
	 * @memberOf IFBInstant
	 */
	function updateAsync(payload:IUpdatePayload) : Promise<Void>;
	/**
	 * [IN CLOSED BETA] Request that the client switch to a different Instant Game.
	 * The API will reject if the switch fails - else, the client will load the new game.
	 * 
	 * @returns {Promise<Void>}
	 * 
	 * @memberOf IFBInstant
	 */
	function switchGameAsync(appID:String, ?data:String) : Promise<Void>;
	/**
	 * Returns whether or not the user is eligible to have shortcut creation requested. Will return false if createShortcutAsync was already called this session or the user is ineligible for shortcut creation.
	 * 
	 * @returns {Promise<Bool>} Promise that resolves with true if the game can request the player create a shortcut to the game, and false otherwise.
	 * @throws PENDING_REQUEST, CLIENT_REQUIRES_UPDATE, INVALID_OPERATION
	 * 
	 * @memberOf IFBInstant
	 */
	function canCreateShortcutAsync() : Promise<Bool>;
	/**
	 * Prompts the user to create a shortcut to the game if they are eligible to Can only be called once per session. (see canCreateShortcutAsync).
	 * 
	 * @returns {Promise<Void>}
	 * @throws USER_INPUT, PENDING_REQUEST, CLIENT_REQUIRES_UPDATE, INVALID_OPERATION
	 */
	function createShortcutAsync() : Promise<Void>;
	/**
	 * Quits the game
	 * 
	 * @memberOf IFBInstant
	 */
	function quit() : Void;
	/**
	 * Log an app event with FB Analytics.
	 * See https://developers.facebook.com/docs/javascript/reference/v2.8#app_events for more details about FB Analytics.
	 * 
	 * @returns {IAPIError} The error if the event failed to log; otherwise returns null.
	 * 
	 * @memberOf IFBInstant
	 */
	function logEvent(eventName:String, ?valueToSum:Float, ?parameters:Dynamic) : IAPIError;
	/**
	 * Set a callback to be fired when a pause event is triggered.
	 * 
	 * @memberOf IFBInstant
	 */
	function onPause(callback:Void->Void) : Void;
}