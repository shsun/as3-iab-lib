package org.iab.vast.parser.base.events {
	import flash.events.Event;

	/**
	 * Events dispatched by the parser.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 10
	 *  @playerversion AIR 1.5
	 *  @productversion OSMF 1.0
	 */
	public dynamic class ParserEvent extends Event {
		public static const XML_PARSED : String = "XML Parsed";
		public static const XML_LOADED : String = "XML Loaded";
		public static const XML_LOAD_START : String = "XML Load Start";
		public static const XML_COMPANION_DETECTED : String = "XML Companion Detected";
		public var uifVars : Object = new Object();

		/**
		 * @private
		 * 
		 * Constructor
		 * 
		 */
		public function ParserEvent(type : String, uifVars : Object = null) {
			super(type);
			this.uifVars = uifVars;
		}

		/**
		 * @private
		 * 
		 */
		public override function toString() : String {
			var eventString : String = super.toString();
			eventString = eventString.slice(0, eventString.length - 1);
			return eventString + " UIFVars=" + String(uifVars) + "]";
		}
	}
}
