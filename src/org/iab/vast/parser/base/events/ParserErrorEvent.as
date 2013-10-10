package org.iab.vast.parser.base.events {
	import flash.events.Event;

	/**
	 * Error Events dispatched by the parser.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 10
	 *  @playerversion AIR 1.5
	 *  @productversion OSMF 1.0
	 */
	public dynamic class ParserErrorEvent extends Event {
		public static const XML_ERROR : String = "XML Error";
		public static const XML_WARNIG : String = "XML Warning";
		public var id : Number;
		public var description : String;

		/**
		 * @private
		 *Constructor
		 * 

		 */
		public function ParserErrorEvent(type : String, id : Number, description : String) {
			this.id = id;
			this.description = description;
			super(type);
		}

		/**
		 * @private
		 */
		public override function toString() : String {
			var errorString : String = super.toString();
			errorString = errorString.slice(0, errorString.length - 1);
			return errorString + " id=" + id + " description=" + description + "]";
		}
	}
}
