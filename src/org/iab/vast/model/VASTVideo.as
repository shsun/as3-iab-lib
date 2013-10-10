package org.iab.vast.model {
	/**
	 * This class represents a Video tag in a VAST document.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 10
	 *  @playerversion AIR 1.5
	 *  @productversion OSMF 1.0
	 */
	public class VASTVideo {
		/**
		 * Constructor.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function VASTVideo() {
			super();

			_mediaFiles = new Vector.<VASTMediaFile>();
		}

		/**
		 * The duration of the video expressed in XML time format, hh:mm:ss.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get duration() : String {
			return _duration;
		}

		public function set duration(value : String) : void {
			_duration = value;
		}

		/**
		 * The Ad ID for the video creative.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get adID() : String {
			return _adID;
		}

		public function set adID(value : String) : void {
			_adID = value;
		}

		/**
		 * The actions to take upon the video being clicked.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get videoClick() : VASTVideoClick {
			return _videoClick;
		}

		public function set videoClick(value : VASTVideoClick) : void {
			_videoClick = value;
		}

		/**
		 * A Vector of VASTMediaFile objects.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get mediaFiles() : Vector.<VASTMediaFile> {
			return _mediaFiles;
		}

		/**
		 * Adds an item to the Vector of VASTMediaFile objects.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function addMediaFile(mediaFile : VASTMediaFile) : void {
			_mediaFiles.push(mediaFile);
		}

		private var _duration : String;
		private var _adID : String;
		private var _videoClick : VASTVideoClick;
		private var _mediaFiles : Vector.<VASTMediaFile>;
	}
}
