package org.iab.vast.parser.base {
	import org.iab.vast.parser.base.interfaces.IParser;

	public dynamic class Parser extends TagParserBase implements IParser {
		public var _mainXML : XML;

		/**
		 * Sub classes are VASTParser and EWParser
		 * 
		 * 
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function Parser() {
			super();
			tagType = "Generic Parser";
		}

		/**
		 * Checks the format of the current ad package
		 * 
		 * 
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function checkFormat(data : XML) : Boolean {
			return false;
		}

		/*
		 * Override this function only.
		 */
		protected function parseXMLData() : void {
			// Parse Data Here: _adTagXML:XMLDocument is the XML Data
			// createUIFvars();
		}

		/**
		 * parse: Passed in url and handlers to base class to parse 
		 * 
		 * 
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function parse(url : XML) : void {
			// //UIFDebugMessage.getInstance()._debugMessage(3, "In parse(" + url + ") ", "INSTREAM", "Parser");

			_mainXML = url
			parseXMLData();
		}

		/**
		 * Returns the mainXML passed to the parser
		 * 
		 * 
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function get mainXML() : XML {
			return _mainXML;
		}
	}
}
/* End package */

