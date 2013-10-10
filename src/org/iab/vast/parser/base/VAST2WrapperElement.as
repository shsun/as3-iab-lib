package org.iab.vast.parser.base {
	/**
	 * Internal wrapper tag parser and data object
	 * 
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 10
	 *  @playerversion AIR 1.5
	 *  @productversion OSMF 1.0
	 */
	public dynamic class VAST2WrapperElement extends VAST2Element {
		/* All these variables are references or arrays of references */
		private var _AdSystem : String;
		private var _VASTAdTagURL : String;
		/* Not really sure what the following are for since the destination tag should really be where the companion ads are */
		private var _CompanionAdImpression : Array;
		private var _CompanionAdTagURL : Array;
		private var _CompanionAdTagCode : String;
		private var _NonLinearImpression : Array;
		private var _NonLinearAdTagURL : Array;
		private var _NonLinearAdTagCode : String;
		private var _Creatives : VAST2CreativeElement;

		/**
		 * @private
		 */
		public function VAST2WrapperElement(forxData : Object = null, trackingData : VAST2TrackingData = null) {
			super(forxData, "VAST2WrapperElement", trackingData);

			_AdSystem = new String();
			_VASTAdTagURL = new String();
			_CompanionAdImpression = new Array();
			_CompanionAdTagURL = new Array();
			_CompanionAdTagCode = new String();
			_NonLinearImpression = new Array();
			_NonLinearAdTagURL = new Array();
			_NonLinearAdTagCode = new String();
			_Creatives = new VAST2CreativeElement(forxData, _trackingData);

			if ( forxData == null || trackingData == null) {
				// Just a placeholder object to prevent null reference errors
				return;
			}
		}

		/**
		 * @private
		 */
		public function parseXMLData() : void {
			var i : Number;
			var j : Number;

			if (_forxRef == null || _trackingData == null)
				return;

			_AdSystem = _forxRef.AdSystem;

			if (_forxRef.VASTAdTagURI != undefined) {
				_VASTAdTagURL = _forxRef.VASTAdTagURI;
			}

			processUrlList(_forxRef.Impression, _trackingData.impressionArray);
			processUrlList(_forxRef.Error, _trackingData.errorArray);

			if (_forxRef.Creatives != undefined && _forxRef.Creatives.Creative != undefined) {
				for (i = 0; i < _forxRef.Creatives.Creative.length(); i++) {
					if (_forxRef.Creatives.Creative[i] != undefined) {
						var creative : VAST2CreativeElement = new VAST2CreativeElement(_forxRef.Creatives.Creative[i], _trackingData);
						creative.parseXMLData();
						_Creatives.push(creative)
					}
				}
			}
		}

		/**
		 * @private
		 */
		public function get AdSystem() : String {
			return _AdSystem;
		}

		/**
		 * @private
		 */
		public function get VASTAdTagURL() : String {
			return _VASTAdTagURL;
		}

		/**
		 * @private
		 */
		public function get CompanionImpression() : Array {
			return _CompanionAdImpression;
		}

		/**
		 * @private
		 */
		public function get CompanionAdTagURL() : Array {
			return _CompanionAdTagURL;
		}

		/**
		 * @private
		 */
		public function get CompanionAdTagCode() : String {
			return _CompanionAdTagCode;
		}

		/**
		 * @private
		 */
		public function get NonLinearImpression() : Array {
			return _NonLinearImpression;
		}

		/**
		 * @private
		 */
		public function get NonLinearAdTagURL() : Array {
			return _NonLinearAdTagURL;
		}

		/**
		 * @private
		 */
		public function get NonLinearAdTagCode() : String {
			return _NonLinearAdTagCode;
		}
	}
}
