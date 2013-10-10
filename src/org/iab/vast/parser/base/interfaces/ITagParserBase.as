package org.iab.vast.parser.base.interfaces {
	import flash.events.IEventDispatcher;

	/**
	 * Base parse and all sub classes implement ITagParseBase interface.
	 */
	public interface ITagParserBase extends IEventDispatcher {
		function get uifVars() : Object;

		function get tagType() : String;
	}
}
