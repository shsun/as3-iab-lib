package org.iab.vast.model {
	/**
	 * This class represents an Inline ad, which is the 
	 * second-level element surrounding complete ad data for a 
	 * single ad in a VAST document.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 10
	 *  @playerversion AIR 1.5
	 *  @productversion OSMF 1.0
	 */
	public class VASTInlineAd extends VASTAdPackageBase {
		/**
		 * Constructor.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function VASTInlineAd() {
			super();

			_companionAds = new Vector.<VASTCompanionAd>();
			_nonLinearAds = new Vector.<VASTNonLinearAd>();
		}

		/**
		 * The ad title.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get adTitle() : String {
			return _adTitle;
		}

		public function set adTitle(value : String) : void {
			_adTitle = value;
		}

		/**
		 * The description of the ad.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get description() : String {
			return _description;
		}

		public function set description(value : String) : void {
			_description = value;
		}

		/**
		 * URL of request to survey vendor.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get surveyURL() : String {
			return _surveyURL;
		}

		public function set surveyURL(value : String) : void {
			_surveyURL = value;
		}

		/**
		 * The video (if any) for the ad.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get video() : VASTVideo {
			return _video;
		}

		public function set video(value : VASTVideo) : void {
			_video = value;
		}

		/**
		 * The collection of VASTCompanionAds within this ad package.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get companionAds() : Vector.<VASTCompanionAd> {
			return _companionAds;
		}

		/**
		 * The collection of VASTNonLinearAds within this ad package.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get nonLinearAds() : Vector.<VASTNonLinearAd> {
			return _nonLinearAds;
		}

		/**
		 * Adds the given VASTCompanionAd to this ad package.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function addCompanionAd(companionAd : VASTCompanionAd) : void {
			_companionAds.push(companionAd);
		}

		/**
		 * Adds the given VASTNonLinearAd to this ad package.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function addNonLinearAd(nonLinearAd : VASTNonLinearAd) : void {
			_nonLinearAds.push(nonLinearAd);
		}

		private var _adTitle : String;
		private var _description : String;
		private var _surveyURL : String;
		private var _video : VASTVideo;
		private var _companionAds : Vector.<VASTCompanionAd>;
		private var	_nonLinearAds : Vector.<VASTNonLinearAd>;
	}
}
