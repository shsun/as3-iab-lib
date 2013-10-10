package org.iab.vast.model {
	/**
	 * Base class for describing an ad.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 10
	 *  @playerversion AIR 1.5
	 *  @productversion OSMF 1.0
	 */
	public class VASTAdBase {
		/**
		 * Constructor.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function VASTAdBase() {
			_width = 0;
			_height = 0;
			_expandedWidth = 0;
			_expandedHeight = 0;
		}

		/**
		 * The URL of the ad.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get url() : String {
			return _url;
		}

		public function set url(value : String) : void {
			_url = value;
		}

		/**
		 * Wraps block of code (generally script or IFrame) if the ad is not
		 * a URL or URI.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get code() : String {
			return _code;
		}

		public function set code(value : String) : void {
			_code = value;
		}

		/**
		 * URL to open as a destination page when user clicks on the ad.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get clickThroughURL() : String {
			return _clickThroughURL;
		}

		public function set clickThroughURL(value : String) : void {
			_clickThroughURL = value;
		}

		/**
		 * Data to be passed into the ad.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get adParameters() : String {
			return _adParameters;
		}

		public function set adParameters(value : String) : void {
			_adParameters = value;
		}

		/**
		 * The ad's identifier.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get id() : String {
			return _id;
		}

		public function set id(value : String) : void {
			_id = value;
		}

		/**
		 * The width of the ad in pixels.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get width() : int {
			return _width;
		}

		public function set width(value : int) : void {
			_width = value;
		}

		/**
		 * The height of the ad in pixels.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get height() : int {
			return _height;
		}

		public function set height(value : int) : void {
			_height = value;
		}

		/**
		 * The width of the ad in pixels when it is in its expanded state.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get expandedWidth() : int {
			return _expandedWidth;
		}

		public function set expandedWidth(value : int) : void {
			_expandedWidth = value;
		}

		/**
		 * The height of the ad in pixels when it is in its expanded state.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get expandedHeight() : int {
			return _expandedHeight;
		}

		public function set expandedHeight(value : int) : void {
			_expandedHeight = value;
		}

		/**
		 * Defines whether the ad is an ad tag or a link to a static image.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get resourceType() : VASTResourceType {
			return _resourceType;
		}

		public function set resourceType(value : VASTResourceType) : void {
			_resourceType = value;
		}

		/**
		 * The MIME type of the file to be returned.  If omitted then any type
		 * could be delivered.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get creativeType() : String {
			return _creativeType;
		}

		public function set creativeType(value : String) : void {
			_creativeType = value;
		}

		private var _id : String;
		private var _width : int;
		private var _height : int;
		private var _expandedWidth : int;
		private var _expandedHeight : int;
		private var _resourceType : VASTResourceType;
		private var _creativeType : String;
		private var _url : String;
		private var _code : String;
		private var _clickThroughURL : String;
		private var _altText : String;
		private var _adParameters : String;
	}
}
