package org.iab.vast.model {
	/**
	 * Class representing a MediaFile element in a VAST document.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 10
	 *  @playerversion AIR 1.5
	 *  @productversion OSMF 1.0
	 */
	public class VAST2MediaFile extends VASTMediaFile {
		/**
		 * Constructor.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function VAST2MediaFile() {
			super();

			bitrate = 0;
		}

		/**
		 * Indicates whether the Ad should scale to the content video.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get scalable() : Boolean {
			return _scalable;
		}

		public function set scalable(value : Boolean) : void {
			_scalable = value;
		}

		/**
		 * Indicates whether the Ad should keep the same aspect ratio as the content video.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get maintainAspectRatio() : Boolean {
			return _maintainAspectRatio;
		}

		public function set maintainAspectRatio(value : Boolean) : void {
			_maintainAspectRatio = value;
		}

		/**
		 * The current framework (VPAID or VAST).
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get apiFramework() : String {
			return _apiFramework;
		}

		public function set apiFramework(value : String) : void {
			_apiFramework = value;
		}

		private var _scalable : Boolean;
		private var	_maintainAspectRatio : Boolean;
		private var _apiFramework : String;
	}
}
