package org.iab.vast.parser.base.interfaces {
	/**
	 * All parsers implement this interface.
	 */
	public interface IParser extends ITagParserBase {
		function parse(url : XML) : void;
	}
}
