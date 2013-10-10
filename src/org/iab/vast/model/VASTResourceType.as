package org.iab.vast.model {
	/**
	 * Enumeration of possible values for the VAST resourceType attribute.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 10
	 *  @playerversion AIR 1.5
	 *  @productversion OSMF 1.0
	 */
	public class VASTResourceType {
		/**
		 * Event constant for an iframe resource type.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public static const IFRAME : VASTResourceType = new VASTResourceType("iframe");
		/**
		 * Event constant for a script resource type.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public static const SCRIPT : VASTResourceType = new VASTResourceType("script");
		/**
		 * Event constant for an HTML resource type.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public static const HTML : VASTResourceType = new VASTResourceType("html");
		/**
		 * Event constant for a static resource type.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public static const STATIC : VASTResourceType = new VASTResourceType("static");
		/**
		 * Event constant for resource type of some other type.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public static const OTHER : VASTResourceType = new VASTResourceType("other");

		/**
		 * @private
		 * 
		 * Constructor.
		 * 
		 * @param name The name of the resource type.
		 */
		public function VASTResourceType(name : String) {
			this.name = name;
		}

		/**
		 * Returns the resource type constant that matches the given name, null if
		 * there is none.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public static function fromString(name : String) : VASTResourceType {
			var lowerCaseName : String = name != null ? name.toLowerCase() : name;

			for each (var resourceType:VASTResourceType in ALL_TYPES) {
				if (lowerCaseName == resourceType.name) {
					return resourceType;
				}
			}

			return null;
		}

		private static const ALL_TYPES : Array = [IFRAME, SCRIPT, HTML, STATIC, OTHER];
		private var name : String;
	}
}