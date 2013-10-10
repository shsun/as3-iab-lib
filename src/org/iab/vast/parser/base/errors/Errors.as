package org.iab.vast.parser.base.errors {
	/**
	 * Defining the define error numbers.
	 * 
	 * 
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 10
	 *  @playerversion AIR 1.5
	 *  @productversion OSMF 1.0
	 */
	public dynamic class Errors {
		protected var _parseErrorArray : Array;
		/**
		 * Do NOT change the numbers after release. Publishers will rely on these numbers
		 * Stand errors start at 0
		 * 
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public const ERROR_BASE : Object = {id:0, desc:"No error"};
		/**
		 * Standard warnings start at 5000
		 * 
		 * 
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public const WARNING_BASE : Object = {id:5000, desc:"No error"};
		/**
		 * Tag format specific errors start at 10000. Change these in the subclass
		 * 
		 * 
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public const TAG_ERROR_BASE : Object = {id:10000, desc:"No error"};
		/**
		 * Tag format specific warnings start at 15000. Change these in the subclass
		 * 
		 * 
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public const TAG_WARNING_BASE : Object = {id:15000, desc:"No error"};
		/**
		 *Publisher-specific miscellaneous errors start at 20000
		 * 
		 * 
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public const PUB_ERROR_BASE : Object = {id:20000, desc:"No error"};
		/**
		 *Publisher-specific miscellaneous warnings start at 25000
		 * 
		 * 
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public const PUB_WARNING_BASE : Object = {id:25000, desc:"No error"};

		public function Errors() {
			_parseErrorArray = new Array();
		}

		protected function defineError(error : Object) : void {
			_parseErrorArray[error.id] = error;
		}
	}
}
