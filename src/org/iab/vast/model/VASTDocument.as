package org.iab.vast.model {
	/**
	 * This class represents the top level object of the VAST document object
	 * model.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 10
	 *  @playerversion AIR 1.5
	 *  @productversion OSMF 1.0
	 */
	public class VASTDocument extends VASTDataObject {
		/**
		 * Constructor.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function VASTDocument() {
			super(VASTDataObject.VERSION_1_0);

			_ads = new Vector.<VASTAd>();
		}

		/**
		 * Adds the given VASTAd to the document.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function addAd(ad : VASTAd) : void {
			_ads.push(ad);
		}

		/**
		 * The collection of VASTAds in the document.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get ads() : Vector.<VASTAd> {
			return _ads;
		}

		public function get version() : Number {
			return _version;
		}

		public function set version(value : Number) : void {
			_version = value;
		}

		private var _ads : Vector.<VASTAd>;
		private var _version : Number;
	}
}
