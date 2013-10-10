package org.iab.vast.parser.base {
	/**
	 * Vast time data
	 */
	public dynamic class VAST2Time {
		/* Time in hh:mm:ss format */
		private var _hours : Number;
		private var _minutes : Number;
		private var _seconds : Number;

		/** VAST2Time - constructor
		 *
		 * @param hours:Number Hours
		 * @param minutes:Number Minutes
		 * @param seconds:Number Seconds 
		 */
		public function VAST2Time(hours : Number = 0, minutes : Number = 0, seconds : Number = 0) {
			_hours = hours;
			_minutes = minutes;
			_seconds = seconds;
		}

		public function get hh() : Number {
			return _hours;
		}

		public function set hh(val : Number) : void {
			_hours = val;
		}

		public function get mm() : Number {
			return _minutes;
		}

		public function set mm(val : Number) : void {
			_minutes = val;
		}

		public function get ss() : Number {
			return _minutes;
		}

		public function set ss(val : Number) : void {
			_minutes = val;
		}

		public function get totalSeconds() : Number {
			return (_hours * 3600 + _minutes * 60 + _seconds)
		}

		public function get totalMilliseconds() : Number {
			return 1000 * totalSeconds
		}
	}
}
