package org.iab.vpaid.model {
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	import flash.events.Event;
	import flash.events.EventDispatcher;

	import org.iab.vpaid.events.VPAIDEvent;

	/**
	 * @author shsun
	 * 
	 * This class handles communication with v1.1&v2.0 VPAID ads
	 */
	public class VPAIDWrapper extends EventDispatcher implements IVPAIDBase {
		/**
		 * 
		 */
		public const supportedVersions : Vector.<String> = new Vector.<String>("1.1", "2.0");
		/**
		 * 
		 */
		private var _vpaidAd : Object;
		private var _currentVPAIDAdVersion : String;
		/**
		 * 
		 */
		private var _assetsLoadTimer : Timer;
		/**
		 * 
		 */
		private var _vpaidAdShowTimer : Timer;

		/**
		 * @param vpaidSWF
		 * @param assetsLoadTimeout	The timeout of assets loading, in seconds. 
		 * @param vpaidAdShowTimeout	The timeout of ad showing, in seconds. 0 indicate no limit. 
		 */
		public function VPAIDWrapper(vpaidSWF : Object, assetsLoadTimeout : int = 10, vpaidAdShowTimeout : int = 0) : void {
			this._assetsLoadTimer = new Timer(1000, assetsLoadTimeout);
			this._assetsLoadTimer.addEventListener(TimerEvent.TIMER, null);
			//
			this._vpaidAdShowTimer = new Timer(1000, vpaidAdShowTimeout);
			this._vpaidAdShowTimer.addEventListener(TimerEvent.TIMER_COMPLETE, null);
			//
			if (_vpaidAd == null) {
				try {
					_vpaidAd = vpaidSWF["getVPAID"]();
				} catch(error : Error) {
					//
				}
			}
			if (_vpaidAd == null) {
				try {
					_vpaidAd = vpaidSWF["vpaid"];
				} catch(error : Error) {
					//
				}
			}
			if (_vpaidAd == null) {
				try {
					_vpaidAd = vpaidSWF;
				} catch(error : Error) {
					//
				}
			}
			//
			if (_vpaidAd == null) {
				// this._vpaidElement.error();
			}
		}

		/**
		 * Performs a handshake with the loaded VPAID Ad passing it a VPAID version.
		 * If the version number passed to handshake is supported than the Ad is ready to start,
		 * otherwise an error is dispatched.
		 */
		public function probeVersion() : Boolean {
			var result : Boolean = false;
			//
			var handshakeReturn : Boolean = false;
			if (!handshakeReturn) {
				try {
					_currentVPAIDAdVersion = _vpaidAd["handshakeVersion"]("1.1");
					handshakeReturn = _checkHandShakeVersion(_currentVPAIDAdVersion);
				} catch (e : Error) {
					result = false;
				}
			}
			if (!handshakeReturn) {
				try {
					_currentVPAIDAdVersion = _vpaidAd["handshakeVersion"]("2.0");
					handshakeReturn = _checkHandShakeVersion(_currentVPAIDAdVersion);
				} catch (e : Error) {
					result = false;
				}
			}

			if (handshakeReturn) {
				result = true;
			}

			return result;
		}

		private function addVPAIDSWFListeners() : void {
			_vpaidAd["addEventListener"](VPAIDEvent.AD_LOADED, this.handleVPAIDAdEvent);
			_vpaidAd["addEventListener"](VPAIDEvent.AD_STARTED, this.handleVPAIDAdEvent);
			_vpaidAd["addEventListener"](VPAIDEvent.AD_STOPPED, this.handleVPAIDAdEvent);
			_vpaidAd["addEventListener"](VPAIDEvent.AD_SKIPPED, this.handleVPAIDAdEvent);
			_vpaidAd["addEventListener"](VPAIDEvent.AD_SKIPPABLE_STATE_CHANGED, this.handleVPAIDAdEvent);
			_vpaidAd["addEventListener"](VPAIDEvent.AD_SIZE_CHANGE, this.handleVPAIDAdEvent);
			_vpaidAd["addEventListener"](VPAIDEvent.AD_LINEAR_CHANGE, this.handleVPAIDAdEvent);
			_vpaidAd["addEventListener"](VPAIDEvent.AD_DURATION_CHANGE, this.handleVPAIDAdEvent);
			_vpaidAd["addEventListener"](VPAIDEvent.AD_EXPANDED_CHANGE, this.handleVPAIDAdEvent);
			_vpaidAd["addEventListener"](VPAIDEvent.AD_REMAINING_TIME_CHANGE, this.handleVPAIDAdEvent);
			_vpaidAd["addEventListener"](VPAIDEvent.AD_VOLUME_CHANGE, this.handleVPAIDAdEvent);
			_vpaidAd["addEventListener"](VPAIDEvent.AD_IMPRESSION, this.handleVPAIDAdEvent);
			_vpaidAd["addEventListener"](VPAIDEvent.AD_VIDEO_START, this.handleVPAIDAdEvent);
			_vpaidAd["addEventListener"](VPAIDEvent.AD_VIDEO_FIRST_QUARTILE, this.handleVPAIDAdEvent);
			_vpaidAd["addEventListener"](VPAIDEvent.AD_VIDEO_MIDPOINT, this.handleVPAIDAdEvent);
			_vpaidAd["addEventListener"](VPAIDEvent.AD_VIDEO_THIRD_QUARTILE, this.handleVPAIDAdEvent);
			_vpaidAd["addEventListener"](VPAIDEvent.AD_VIDEO_COMPLETE, this.handleVPAIDAdEvent);
			_vpaidAd["addEventListener"](VPAIDEvent.AD_CLICK_THRU, this.handleVPAIDAdEvent);
			_vpaidAd["addEventListener"](VPAIDEvent.AD_INTERACTION, this.handleVPAIDAdEvent);
			_vpaidAd["addEventListener"](VPAIDEvent.AD_USER_ACCEPT_INVITATION, this.handleVPAIDAdEvent);
			_vpaidAd["addEventListener"](VPAIDEvent.AD_USER_MINIMIZE, this.handleVPAIDAdEvent);
			_vpaidAd["addEventListener"](VPAIDEvent.AD_USER_CLOSE, this.handleVPAIDAdEvent);
			_vpaidAd["addEventListener"](VPAIDEvent.AD_PAUSED, this.handleVPAIDAdEvent);
			_vpaidAd["addEventListener"](VPAIDEvent.AD_PLAYING, this.handleVPAIDAdEvent);
			_vpaidAd["addEventListener"](VPAIDEvent.AD_LOG, this.handleVPAIDAdEvent);
			_vpaidAd["addEventListener"](VPAIDEvent.AD_ERROR, this.handleVPAIDAdEvent);
		}

		private function removeVPAIDSwfListeners() : void {
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_LOADED, this.handleVPAIDAdEvent);
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_STARTED, this.handleVPAIDAdEvent);
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_STOPPED, this.handleVPAIDAdEvent);
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_SKIPPED, this.handleVPAIDAdEvent);
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_SKIPPABLE_STATE_CHANGED, this.handleVPAIDAdEvent);
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_SIZE_CHANGE, this.handleVPAIDAdEvent);
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_LINEAR_CHANGE, this.handleVPAIDAdEvent);
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_DURATION_CHANGE, this.handleVPAIDAdEvent);
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_EXPANDED_CHANGE, this.handleVPAIDAdEvent);
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_REMAINING_TIME_CHANGE, this.handleVPAIDAdEvent);
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_VOLUME_CHANGE, this.handleVPAIDAdEvent);
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_IMPRESSION, this.handleVPAIDAdEvent);
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_VIDEO_START, this.handleVPAIDAdEvent);
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_VIDEO_FIRST_QUARTILE, this.handleVPAIDAdEvent);
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_VIDEO_MIDPOINT, this.handleVPAIDAdEvent);
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_VIDEO_THIRD_QUARTILE, this.handleVPAIDAdEvent);
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_VIDEO_COMPLETE, this.handleVPAIDAdEvent);
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_CLICK_THRU, this.handleVPAIDAdEvent);
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_INTERACTION, this.handleVPAIDAdEvent);
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_USER_ACCEPT_INVITATION, this.handleVPAIDAdEvent);
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_USER_MINIMIZE, this.handleVPAIDAdEvent);
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_USER_CLOSE, this.handleVPAIDAdEvent);
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_PAUSED, this.handleVPAIDAdEvent);
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_PLAYING, this.handleVPAIDAdEvent);
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_LOG, this.handleVPAIDAdEvent);
			_vpaidAd["removeEventListener"](VPAIDEvent.AD_ERROR, this.handleVPAIDAdEvent);
		}

		/**
		 * Compares the version from the VPAID ad with the version-array of this class
		 * 
		 * Is true if the version of the ad is found inside the _handshakeVersions array
		 */
		private function _checkHandShakeVersion(_version : String) : Boolean {
			for (var i:String in supportedVersions) {
				if (_version.substring(0, 3) == String(supportedVersions[i]).substring(0, 3))
					return true;
			}
			return false;
		}

		private function handleVPAIDAdEvent(event : Object) : void {
			// Forward events
			var myVPAIDEvent : VPAIDEvent = new VPAIDEvent(event.type, event.data, event.bubbles, event.cancelable);
			switch (event.type) {
				case VPAIDEvent.AD_STARTED :
					this._vpaidAdShowTimer.start();
					break;
				case VPAIDEvent.AD_STOPPED :
					this.disposeVpaidAdShowTimer();
					this.removeVPAIDSwfListeners();
					break;
				case VPAIDEvent.AD_USER_CLOSE:
					this.disposeAssetLoadTimer();
					this.disposeVpaidAdShowTimer();
					this.removeVPAIDSwfListeners();
					break;
				case VPAIDEvent.AD_ERROR :
					this.disposeAssetLoadTimer();
					this.disposeVpaidAdShowTimer();
					this.removeVPAIDSwfListeners();
					break;
			}
			dispatchEvent(myVPAIDEvent);
		}

		private function disposeVpaidAdShowTimer() : void {
			if (this._vpaidAdShowTimer) {
				this._vpaidAdShowTimer.removeEventListener(TimerEvent.TIMER_COMPLETE, null);
				this._vpaidAdShowTimer.stop();
				this._vpaidAdShowTimer = null;
			}
		}

		private function disposeAssetLoadTimer() : void {
			if (this._assetsLoadTimer) {
				this._assetsLoadTimer.removeEventListener(TimerEvent.TIMER, null);
				this._assetsLoadTimer.stop();
				this._assetsLoadTimer = null;
			}
		}

		public function get linearVPAID() : Boolean {
			return _vpaidAd["adLinear"];
		}

		public function get expandedVPAID() : Boolean {
			return _vpaidAd["adExpanded"];
		}

		public function get remainingTimeVPAID() : Number {
			return _vpaidAd["adRemainingTime"];
		}

		public function get volumeVPAID() : Number {
			return _vpaidAd["adVolume"];
		}

		public function set volumeVPAID(value : Number) : void {
			_vpaidAd["adVolume"] = value;
		}

		public function handshakeVersion(playerVPAIDVersion : String) : String {
			try {
				_currentVPAIDAdVersion = _vpaidAd["handshakeVersion"](playerVPAIDVersion);
			} catch (e : Error) {
				//this._vpaidElement.error();
			}
			return _currentVPAIDAdVersion;
		}

		/**
		 * 
		 */
		public function initVPAID(width : Number, height : Number, viewMode : String, desiredBitrate : Number, creativeData : String, environmentVars : String) : void {
			this.addVPAIDSWFListeners();
			try {
				this._assetsLoadTimer.start();
				_vpaidAd["initAd"](width, height, viewMode, desiredBitrate, creativeData, environmentVars);
			} catch (e : Error) {
				// this._vpaidElement.error();
			}
		}

		public function resizeVPAID(width : Number, height : Number, viewMode : String) : void {
			try {
				_vpaidAd["resizeAd"](width, height, viewMode);
			} catch (e : Error) {
			}
		}

		public function startVPAID() : void {
			try {
				_vpaidAd["startAd"]();
			} catch (e : Error) {
				// this._vpaidElement.error();
			}
		}

		public function stopVPAID() : void {
			try {
				_vpaidAd["stopAd"]();
			} catch (e : Error) {
				// this._vpaidElement.error();
			}
		}

		public function pauseVPAID() : void {
			try {
				_vpaidAd["pauseAd"]();
			} catch (e : Error) {
			}
		}

		public function resumeVPAID() : void {
			try {
				_vpaidAd["resumeAd"]();
			} catch (e : Error) {
			}
		}

		public function expandVPAID() : void {
			try {
				_vpaidAd["expandAd"]();
			} catch (e : Error) {
			}
		}

		public function collapseVPAID() : void {
			try {
				_vpaidAd["collapseAd"]();
			} catch (e : Error) {
			}
		}

		private function error() : void {
		}

		private function warn() : void {
		}

		public function get version() : String {
			return _currentVPAIDAdVersion;
		}

		public function get api() : Object {
			return _vpaidAd;
		}
	}
}
