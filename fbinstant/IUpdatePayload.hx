package fbinstant;

extern interface IUpdatePayload
{
	/**
	 * The UpdateAction (CUSTOM or LEADERBOARD)
	 * 
	 * @type {UpdateAction}
	 * @memberOf IUpdatePayload
	 */
	var action : UpdateAction;
}