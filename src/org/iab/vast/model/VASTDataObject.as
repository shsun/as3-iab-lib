package org.iab.vast.model {
	/**
	 * Data Object for the current VAST version
	 *  
	 *
	 * 
	 *  @langversion 3.0
	 *  @playerversion Flash 10
	 *  @playerversion AIR 1.5
	 *  @productversion OSMF 1.0
	 */
	public class VASTDataObject {
		/**
		 * Constructor.
		 *  
		 * @param vast version
		 * 
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function VASTDataObject(vastVersion : Number) {
			_vastVersion = vastVersion;
		}

		/**
		 * Returns current VAST version
		 *  
		 * 
		 * 
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get vastVersion() : Number {
			return _vastVersion;
		}

		private var _vastVersion : Number;
		public static var VERSION_1_0 : Number = 1.0;
		public static var VERSION_2_0 : Number = 2.0;
	}
}
