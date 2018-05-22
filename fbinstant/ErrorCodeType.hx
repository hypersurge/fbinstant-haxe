package fbinstant;

/**
 * An Instant Games error code
 * 
 * @export
 * @enum {string}
 */
@:native("")
extern enum ErrorCodeType
{
	/**
	 * Ads are being loaded too frequently.
	 */
	ADS_FREQUENT_LOAD = "ADS_FREQUENT_LOAD";
	/**
	 * We were not able to serve ads to the current user.
	 * This can happen if the user has opted out of interest-based ads on their device,
	 * or if we do not have ad inventory to show for that user.
	 */
	ADS_NO_FILL = "ADS_NO_FILL";
	/**
	 * Attempted to show an ad that has not been loaded successfully.
	 */
	ADS_NOT_LOADED = "ADS_NOT_LOADED";
	/**
	 * There are too many concurrent ad instances.
	 * Load and show existing ad instances before creating new ones.
	 */
	ADS_TOO_MANY_INSTANCES = "ADS_TOO_MANY_INSTANCES";
	/**
	 * The analytics API experienced a problem while attempting to post an event.
	 */
	ANALYTICS_POST_EXCEPTION = "ANALYTICS_POST_EXCEPTION";
	/**
	 * The client requires an update to access the feature that returned this result.
	 * If this result is returned on web, it means the feature is not supported by the web client yet.
	 * Deprecated in favor of CLIENT_UNSUPPORTED_OPERATION in v5.0 and above
	 * 
	 * @deprecated
	 */
	CLIENT_REQUIRES_UPDATE = "CLIENT_REQUIRES_UPDATE";
	/**
	 * The client does not support the current operation.
	 * This may be due to lack of support on the client version or platform,
	 * or because the operation is not allowed for the game or player.
	 */
	CLIENT_UNSUPPORTED_OPERATION = "CLIENT_UNSUPPORTED_OPERATION";
	/**
	 * The requested operation is invalid or the current game state.
	 * This may include requests that violate limitations, such as exceeding storage thresholds,
	 * or are not available in a certain state, such as making a context-specific request in a solo context.
	 */
	INVALID_OPERATION = "INVALID_OPERATION";
	/**
	 * The parameter(s) passed to the API are invalid.
	 * Could indicate an incorrect type, invalid number of arguments, or a semantic issue
	 * (for example, passing an unserializable object to a serializing function).
	 */
	INVALID_PARAM = "INVALID_PARAM";
	/**
	 * No leaderboard with the requested name was found.
	 * Either the leaderboard does not exist yet,
	 * or the name did not match any registered leaderboard configuration for the game.
	 */
	LEADERBOARD_NOT_FOUND = "LEADERBOARD_NOT_FOUND ";
	/**
	 * Attempted to write to a leaderboard that's associated with a context
	 * other than the one the game is currently being played in.
	 */
	LEADERBOARD_WRONG_CONTEXT = "LEADERBOARD_WRONG_CONTEXT";
	/**
	 * The client experienced an issue with a network request.
	 * This is likely due to a transient issue, such as the player's internet connection dropping.
	 */
	NETWORK_FAILURE = "NETWORK_FAILURE";
	/**
	 * Represents a rejection due an existing request that conflicts with this one.
	 * For example, we will reject any calls that would surface a Facebook UI
	 * when another request that depends on a Facebook UI is pending.
	 */
	PENDING_REQUEST = "PENDING_REQUEST";
	/**
	 * The game attempted to perform a context switch into the current context.
	 */
	SAME_CONTEXT = "SAME_CONTEXT";
	/**
	 * An unknown or unspecified issue occurred.
	 * This is the default error code returned when the client does not specify a code.
	 */
	UNKNOWN = "UNKNOWN";
	/**
	 * The user made a choice that resulted in a rejection.
	 * For example, if the game calls up the Context Switch dialog and the player closes it,
	 * this error code will be included in the promise rejection.
	 */
	USER_INPUT = "USER_INPUT";
}