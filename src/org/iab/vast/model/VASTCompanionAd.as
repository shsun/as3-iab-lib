package org.iab.vast.model {
	/**
	 * This class represents a Companion Ad in a VAST document.  A companion ad
	 * is commonly text, display ads, rich media, or skins that wrap around the
	 * video experience. These ads come in a number of sizes and shapes and
	 * typically run alongside or surrounding the media player.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 10
	 *  @playerversion AIR 1.5
	 *  @productversion OSMF 1.0
	 */
	public class VASTCompanionAd extends VASTAdBase {
		/**
		 * Constructor.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function VASTCompanionAd() {
			super();
		}

		/**
		 * Alt text to be displayed when the companion ad is rendered in an
		 * HTML environment.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get altText() : String {
			return _altText;
		}

		public function set altText(value : String) : void {
			_altText = value;
		}

		private var _altText : String;
	}
}
