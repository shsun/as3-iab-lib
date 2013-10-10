package org.iab.vast.parser.base {
	/**
	 * Base class for all elements
	 */
	public dynamic class VAST2Element extends Array {
		// Reference to the portion of the forx tree
		protected var _forxRef : Object;
		// Name of the element
		protected var _elementName : String;
		protected var _trackingData : VAST2TrackingData;

		/**
		 * @private
		 */
		public function VAST2Element(forxData : Object, eName : String, trackingData : VAST2TrackingData) {
			_elementName = eName;
			// Set a reference to the portion of the forx tree
			_forxRef = forxData;
			_trackingData = trackingData;
		}

		protected function processUrlList(forxData : Object, trackingArray : Array) : void {
			if (forxData != null) {
				for (var i : uint = 0; i < forxData.length(); i++) {
					var urlObject : Object = new Object();
					if (forxData[i] != undefined)
						urlObject.url = forxData[i].text();
					trackingArray.push(urlObject);
				}
			}
		}

		/**
		 * @private
		 */
		public function get forxRef() : Object {
			return _forxRef;
		}

		/**
		 * @private
		 */
		public function get elementName() : String {
			return _elementName;
		}

		/**
		 * @private
		 */
		public function get trackingData() : VAST2TrackingData {
			return _trackingData;
		}
	}
}
