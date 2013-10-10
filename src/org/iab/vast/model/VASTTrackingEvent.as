package org.iab.vast.model {
	/**
	 * This class represents a Tracking element in a VAST document.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 10
	 *  @playerversion AIR 1.5
	 *  @productversion OSMF 1.0
	 */
	public class VASTTrackingEvent {
		/**
		 * Constructor.
		 * 
		 * @param type The type of the event to track.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function VASTTrackingEvent(type : VASTTrackingEventType) {
			this.type = type;

			_urls = new Vector.<VASTUrl>();
		}

		/**
		 * The type of the event to track.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get type() : VASTTrackingEventType {
			return _type;
		}

		public function set type(value : VASTTrackingEventType) : void {
			_type = value;
		}

		/**
		 * URL(s) to track this event during play back. There could be zero or
		 * many for this event.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get urls() : Vector.<VASTUrl> {
			return _urls;
		}

		public function set urls(value : Vector.<VASTUrl>) : void {
			_urls = value;
		}

		private var _type : VASTTrackingEventType;
		private var _urls : Vector.<VASTUrl>;
	}
}
