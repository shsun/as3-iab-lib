package org.iab.vast.model {
	/**
	 * This class represents a URL in a VAST document.
	 */
	public class VASTUrl {
		/**
		 * Constructor.
		 * 
		 * @param url The URL.
		 * @param id An optional id associated with the URL.
		 * 		 */
		public function VASTUrl(url : String, id : String = null) {
			_url = url;
			_id = id;
		}

		/**
		 * The URL.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get url() : String {
			return _url;
		}

		/**
		 * An optional id associated with the URL.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get id() : String {
			return _id;
		}

		private var _url : String;
		private var _id : String;
	}
}
