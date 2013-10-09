package org.iab.vpaid.model {
	/**
	 * @author shsun
	 */
	public interface IVPAID_2_0_Wrapper extends IVPAID_1_1_Wrapper {
		// Properties
		/**
		 * provide current width of ad unit after ad has resized
		 */
		function get widthVPAID() : Number;

		/**
		 * provide current height of ad unit after ad has resized
		 */
		function get heightVPAID() : Number;

		/**
		 * in support of skippable ads, this feature enables the video 
		 * player to identify when the ad is in a state where it can be skipped.
		 */
		function get skippableStateVPAID() : Boolean;

		/**
		 * reports total duration to more clearly report on the changing duration, 
		 * which is confusing when both remaining time and duration can change
		 */
		function get durationVPAID() : Number;

		/**
		 * included to support ad companions in VPAID, when companion information is 
		 * not available until after the VPAID .swf file has already loaded.
		 */
		function get companionsVPAID() : String;

		/**
		 * included to support various industry programs which require the 
		 * overlay of icons on the ad
		 */
		function get iconsVPAID() : Boolean;

		// Methods
		/**
		 * enable the video player to include controls for allowing its audience to skip ads. 
		 * The new AdSkipped event is dispatched by the ad unit in response to this call.
		 */
		function skipVPAID() : void;
	}
}
