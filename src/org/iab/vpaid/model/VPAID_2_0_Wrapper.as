package org.iab.vpaid.model {
	/**
	 * @author shsun
	 * 
	 * This class handles communication with v1.1&v2.0 VPAID ads
	 */
	public class VPAID_2_0_Wrapper extends VPAID_1_1_Wrapper implements IVPAID_2_0_Wrapper {
		/**
		 * 
		 */
		public function VPAID_2_0_Wrapper(vpaidSWF : Object, assetsLoadTimeout : int = 10, vpaidAdShowTimeout : int = 0) : void {
			super(vpaidSWF, assetsLoadTimeout, vpaidAdShowTimeout);
		}

		/**
		 * provide current width of ad unit after ad has resized
		 */
		public function get widthVPAID() : Number {
			return this._vpaidAd["adWidth"];
		}

		public function get heightVPAID() : Number {
			return this._vpaidAd["adHeight"];
		}

		public function get skippableStateVPAID() : Boolean {
			return this._vpaidAd["adSkippableState"];
		}

		public function get durationVPAID() : Number {
			return this._vpaidAd["adDuration"];
		}

		public function get companionsVPAID() : String {
			return this._vpaidAd["adCompanions"];
		}

		public function get iconsVPAID() : Boolean {
			return this._vpaidAd["adIcons"];
		}

		public function skipVPAID() : void {
			try {
				_vpaidAd["skipAd"]();
			} catch (e : Error) {
				if (this._currentVPAIDAdVersion == VPAID_VERSION_1_1) {
					// ERROR
				}
			}
		}
	}
}
