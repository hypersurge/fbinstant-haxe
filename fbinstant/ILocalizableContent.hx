extern interface ILocalizableContent
{
	/**
	 * The default value of the string to use if the viewer's locale is not a key in the localizations object.
	 * 
	 * @type {string}
	 * @memberOf ILocalizableContent
	 */
	var default : String;
	/**
	 * Specifies what string to use for viewers in each locale.
	 * See https://www.facebook.com/translations/FacebookLocales.xml for a complete list of supported locale values.
	 * 
	 * @type {ILocalizationsDict}
	 * @memberOf ILocalizableContent
	 */
	var localizations : ILocalizationsDict;
}