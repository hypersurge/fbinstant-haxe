package fbinstant;

extern interface ICustomUpdatePayload extends IUpdatePayload
{
	/**
	 * ID of the template this custom update is using.
	 * Templates should be predefined in fbapp-config.json.
	 * See the Bundle Config documentation (https://developers.facebook.com/docs/games/instant-games/bundle-config)
	 * for documentation about fbapp-config.json.
	 * 
	 * @type {string}
	 * @memberOf ICustomUpdatePayload
	 */
	var template : String;
	/**
	 * Data URL of a base64 encoded image.
	 * 
	 * @type {string}
	 * @memberOf ICustomUpdatePayload
	 */
	var image : String;
	/**
	 * A text message, or an object with the default text as the value of 'default' and
	 * another object mapping locale keys to translations as the value of 'localizations'.
	 * 
	 * @type {string | ILocalizationsDict}
	 * @memberOf ICustomUpdatePayload
	 */
	var text : haxe.extern.EitherType<String, ILocalizationsDict>;
	/**
	 * Optional call-to-action button text. By default we will use a localized 'Play' as the button text.
	 * To provide localized versions of your own call to action, pass an object with the default cta as the value
	 * of 'default' and another object mapping locale keys to translations as the value of 'localizations'.
	 * 
	 * @type {(string | ILocalizationsDict)}
	 * @memberOf ICustomUpdatePayload
	 */
	@:optional var cta : haxe.extern.EitherType<String, ILocalizationsDict>;
	/**
	 * A blob of data to attach to the update.
	 * All game sessions launched from the update will be able to access this blob through FBInstant.getEntryPointData().
	 * Must be less than or equal to 1000 characters when stringified.
	 * 
	 * @type {Object}
	 * @memberOf ICustomUpdatePayload
	 */
	@:optional var data : Dynamic;
	/**
	 * Specifies how the update should be delivered.
	 * 
	 * This can be one of the following:
	 * 'IMMEDIATE' - The update should be posted immediately.
	 * 'LAST' - The update should be posted when the game session ends. The most recent update sent using the 'LAST' strategy will be the one sent.
	 * 'IMMEDIATE_CLEAR' - The update is posted immediately, and clears any other pending updates (such as those sent with the 'LAST' strategy).
	 * 
	 * If no strategy is specified, we default to 'IMMEDIATE'.
	 * 
	 * @type {string}
	 * @memberOf ICustomUpdatePayload
	 */
	@:optional var strategy : String;
	/**
	 * Specifies notification setting for the custom update.
	 * This can be 'NO_PUSH' or 'PUSH', and defaults to 'NO_PUSH'.
	 * Use push notification only for updates that are high-signal and immediately actionable for the recipients.
	 * Also note that push notification is not always guaranteed, depending on user setting and platform policies.
	 * 
	 * @type {string}
	 * @memberOf ICustomUpdatePayload
	 */
	@:optional var notification : String;
}