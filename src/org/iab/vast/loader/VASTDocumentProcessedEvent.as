package org.iab.vast.loader {
	import flash.events.Event;

	import org.iab.vast.model.VASTDataObject;

	internal class VASTDocumentProcessedEvent extends Event {
		public static const PROCESSED : String = "processed";
		public static const PROCESSING_FAILED : String = "processingFailed";

		public function VASTDocumentProcessedEvent(type : String, vastDocument : VASTDataObject = null, bubbles : Boolean = false, cancelable : Boolean = false) {
			super(type, bubbles, cancelable);

			_vastDocument = vastDocument;
		}

		public function get vastDocument() : VASTDataObject {
			return _vastDocument;
		}

		override public function clone() : Event {
			return new VASTDocumentProcessedEvent(type, vastDocument, bubbles, cancelable);
		}

		private var _vastDocument : VASTDataObject;
	}
}