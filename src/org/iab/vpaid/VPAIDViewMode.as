package org.iab.vpaid {
	/**
	 * @author shsun
	 */
	public class VPAIDViewMode {
		/**
		 * 
		 */
		public static const normal : VPAIDViewMode = new VPAIDViewMode("normal");
		/**
		 * 
		 */
		public static const thumbnail : VPAIDViewMode = new VPAIDViewMode("thumbnail");
		/**
		 * 
		 */
		public static const fullscreen : VPAIDViewMode = new VPAIDViewMode("fullscreen");

		/**
		 * 
		 */
		public function VPAIDViewMode(code : String) {
			this._code = code;
		}

		private var _code : String;

		public function get code() : String {
			return this._code;
		}
	}
}
