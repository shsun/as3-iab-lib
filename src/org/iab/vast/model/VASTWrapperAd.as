package org.iab.vast.model {
	/**
	 * This class represents a Wrapper Ad which is another 
	 * VAST document that points to another VAST document from
	 * a different server.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 10
	 *  @playerversion AIR 1.5
	 *  @productversion OSMF 1.0
	 */
	public class VASTWrapperAd extends VASTAdPackageBase {
		/**
		 * Constructor.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function VASTWrapperAd() {
			super();

			_companionImpressions = new Vector.<VASTUrl>();
			_nonLinearImpressions = new Vector.<VASTUrl>();
		}

		/**
		 * The ad tag URL.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get vastAdTagURL() : String {
			return _vastAdTagURL;
		}

		public function set vastAdTagURL(value : String) : void {
			_vastAdTagURL = value;
		}

		/**
		 * The actions to take upon the video being clicked.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get videoClick() : VASTVideoClick {
			return _videoClick;
		}

		public function set videoClick(value : VASTVideoClick) : void {
			_videoClick = value;
		}

		/**
		 * URLs to track Companion impressions if desired by Secondary Ad Server
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get companionImpressions() : Vector.<VASTUrl> {
			return _companionImpressions;
		}

		public function set companionImpressions(value : Vector.<VASTUrl>) : void {
			_companionImpressions = value;
		}

		/**
		 * URL of ad tag of Companion ad, if served or tracked separately
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get companionAdTag() : VASTUrl {
			return _companionAdTag;
		}

		public function set companionAdTag(value : VASTUrl) : void {
			_companionAdTag = value;
		}

		/**
		 * URLs to track NonLinear impressions if desired by Secondary Ad Server
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get nonLinearImpressions() : Vector.<VASTUrl> {
			return _nonLinearImpressions;
		}

		public function set nonLinearImpressions(value : Vector.<VASTUrl>) : void {
			_nonLinearImpressions = value;
		}

		/**
		 * URL of ad tag of NonLinear ad, if served or tracked separately
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get nonLinearAdTag() : VASTUrl {
			return _nonLinearAdTag;
		}

		public function set nonLinearAdTag(value : VASTUrl) : void {
			_nonLinearAdTag = value;
		}

		private var _vastAdTagURL : String;
		private var _videoClick : VASTVideoClick;
		private var _companionImpressions : Vector.<VASTUrl>;
		private var _companionAdTag : VASTUrl;
		private var _nonLinearImpressions : Vector.<VASTUrl>;
		private var _nonLinearAdTag : VASTUrl;
	}
}
