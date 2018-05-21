extern interface ILeaderboardUpdatePayload extends IUpdatePayload
{
	/**
	 * The name of the leaderboard to feature in the update.
	 * 
	 * @type {string}
	 * @memberOf ILeaderboardUpdatePayload
	 */
	var name : String;
	/**
	 * Optional text message. If not specified, a localized fallback message will be provided instead.
	 * 
	 * @type {string}
	 * @memberOf ILeaderboardUpdatePayload
	 */
	@:optional var text : String;
}