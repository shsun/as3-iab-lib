package org.iab.vast.model {
	import flash.errors.IllegalOperationError;

	/**
	 * This class represents the second-level element in a VAST document.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 10
	 *  @playerversion AIR 1.5
	 *  @productversion OSMF 1.0
	 */
	public class VASTAd {
		/**
		 * Constructor. 
		 * 
		 * @param id The id attribute (on the Ad element) from the 
		 * VAST document.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function VASTAd(id : String) {
			_id = id;
		}

		/**
		 * The value of the id attribute on the Ad element from the 
		 * VAST document.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get id() : String {
			return _id;
		}

		/**
		 * The value of the InLine element from the VAST document represented
		 * by a VASTAdInline object.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get inlineAd() : VASTInlineAd {
			return _inlineAd;
		}

		public function set inlineAd(value : VASTInlineAd) : void {
			_inlineAd = value;
		}

		/**
		 * The value of the Wrapper element from the VAST document represented
		 * by a VASTAdWrapper object.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get wrapperAd() : VASTWrapperAd {
			return _wrapperAd;
		}

		public function set wrapperAd(value : VASTWrapperAd) : void {
			_wrapperAd = value;
		}

		private var _id : String;
		private var _inlineAd : VASTInlineAd;
		private var _wrapperAd : VASTWrapperAd;
	}
}
