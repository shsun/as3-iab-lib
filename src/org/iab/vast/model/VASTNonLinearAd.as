package org.iab.vast.model {
	/**
	 * This class represents a NonLinear tag in a VAST document.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 10
	 *  @playerversion AIR 1.5
	 *  @productversion OSMF 1.0
	 */
	public class VASTNonLinearAd extends VASTAdBase {
		/**
		 * Constructor.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function VASTNonLinearAd() {
			super();
		}

		/**
		 * Whether or not it is acceptable to scale the image.
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
		 * Whether or not the ad must have its aspect ratio maintained when
		 * scaled.
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
		 * Framework, if any, used for communication from ad to Video Player,
		 * such as "FlashVars".
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
		private var _maintainAspectRatio : Boolean;
		private var _apiFramework : String;
	}
}
