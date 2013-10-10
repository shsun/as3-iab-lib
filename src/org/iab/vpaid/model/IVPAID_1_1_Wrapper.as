package org.iab.vpaid.model {
	import org.iab.vpaid.VPAIDViewMode;
	import flash.display.DisplayObject;
	import flash.events.IEventDispatcher;

	/**
	 * @author shsun
	 */
	public interface IVPAID_1_1_Wrapper extends IEventDispatcher {
		
		// Properties
		function get api() : DisplayObject;

		function get version() : String;

		/**
		 * Indicates the ad�s current linear vs. non-linear mode of
		 * operation. linearVPAID when true indicates the ad is in a linear playback mode, false
		 * nonlinear.
		 */
		function get linearVPAID() : Boolean;

		/** 
		 * Indicates whether the ad is in a state where it
		 * occupies more UI area than its smallest area. If the ad has multiple expanded states,
		 * all expanded states show expandedVPAID being true.
		 */
		function get expandedVPAID() : Boolean;

		/**
		 * The player may use the remainingTimeVPAID property to update player UI during ad
		 * playback. The remainingTimeVPAID property is in seconds and is relative to the time the
		 * property is accessed.
		 */
		function get remainingTimeVPAID() : Number;

		/**
		 * The player uses the volumeVPAID property to attempt to set or get the ad volume. The
		 * volumeVPAID value is between 0 and 1 and is linear.
		 */
		function get volumeVPAID() : Number;

		function set volumeVPAID(value : Number) : void;

		// Methods
		function isValidVersion() : Boolean

		/**
		 * After the ad is loaded and the player calls handshakeVersion, the player calls initVPAID to
		 * initialize the ad experience. The player may pre-load the ad and delay calling initVPAID
		 * until nearing the ad playback time, however, the ad does not load its assets until initVPAID
		 * is called.
		 */
		function initVPAID(width : Number, height : Number, viewMode : VPAIDViewMode = VPAIDViewMode.normal, desiredBitrate : Number = -1, creativeData : String = null, environmentVars : String = null) : void;

		/**
		 * Following a resize of the ad UI container, the player calls resizeAd to allow the ad to
		 * scale or reposition itself within its display area. The width and height always matches
		 * the maximum display area allotted for the ad, and resizeVPAID is only called when the
		 * player changes its video content container sizing.
		 */
		function resizeVPAID(width : Number, height : Number, viewMode : String) : void;

		/**
		 * startVPAID is called by the player and is called when the player wants the ad to start
		 * displaying.
		 */
		function startVPAID() : void;

		/**
		 * stopVPAID is called by the player when it will no longer display the ad. stopVPAID is also
		 * called if the player needs to cancel an ad.
		 */
		function stopVPAID() : void;

		/**
		 * pauseVPAID is called to pause ad playback. 
		 */
		function pauseVPAID() : void;

		/**
		 * resumeVPAID is called to continue ad playback following a call to pauseAd.
		 */
		function resumeVPAID() : void;

		/**
		 * expandVPAID is called by the player to request that the ad switch to its larger UI size.
		 */
		function expandVPAID() : void;

		/**
		 * collapseVPAID is called by the player to request that the ad switch to its smallest UI size.
		 */
		function collapseVPAID() : void;
	}
}
