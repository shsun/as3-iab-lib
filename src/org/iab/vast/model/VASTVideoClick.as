package org.iab.vast.model {
	/**
	 * An action to take upon the video being clicked.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 10
	 *  @playerversion AIR 1.5
	 *  @productversion OSMF 1.0
	 */
	public class VASTVideoClick {
		/**
		 * Constructor.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function VASTVideoClick() {
			super();

			_clickTrackings = new Vector.<VASTUrl>();
			_customClicks = new Vector.<VASTUrl>();
		}

		/**
		 * URL to open as destination page when a user clicks on the video.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get clickThrough() : VASTUrl {
			return _clickThrough;
		}

		public function set clickThrough(value : VASTUrl) : void {
			_clickThrough = value;
		}

		/**
		 * A Vector of VASTUrl objects to request for tracking
		 * purposes when a user clicks on the video.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get clickTrackings() : Vector.<VASTUrl> {
			return _clickTrackings;
		}

		public function set clickTrackings(value : Vector.<VASTUrl>) : void {
			_clickTrackings = value;
		}

		/**
		 * A Vector of VASTUrl objects to request on custom
		 * events such as hotspotted video.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get customClicks() : Vector.<VASTUrl> {
			return _customClicks;
		}

		public function set customClicks(value : Vector.<VASTUrl>) : void {
			_customClicks = value;
		}

		private var _clickThrough : VASTUrl;
		private var _clickTrackings : Vector.<VASTUrl>;
		private var _customClicks : Vector.<VASTUrl>;
	}
}
