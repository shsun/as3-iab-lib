package org.iab.vpaid {
	import flash.net.URLRequest;
	import org.iab.vpaid.elements.VPAIDAdProcessor;
	import flash.display.LoaderInfo;
	import org.iab.vpaid.model.VPAID_1_1_Wrapper;
	import flash.events.ProgressEvent;
	import flash.events.HTTPStatusEvent;
	import flash.events.IOErrorEvent;
	import flash.events.Event;
	import flash.display.Loader;
	import flash.display.Sprite;

	/**
	 * @author shsun
	 */
	public class VPAIDTest extends Sprite {
		
		private var wrapper:VPAID_1_1_Wrapper;
		private var processor:VPAIDAdProcessor;
		
		public function VPAIDTest() {
			
			var loader:Loader=new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, completeHandler);
			loader.contentLoaderInfo.addEventListener(HTTPStatusEvent.HTTP_STATUS, httpStatusHandler);
			loader.contentLoaderInfo.addEventListener(Event.INIT, initHandler);
			loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
			loader.contentLoaderInfo.addEventListener(Event.OPEN, openHandler);
			loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
			loader.contentLoaderInfo.addEventListener(Event.UNLOAD, unLoadHandler);
			loader.load(new URLRequest("http://xxxxxxxxxxxxxx/ex.swf"));
		}
		private function completeHandler(event : Event) : void {
			trace("completeHandler: " + event);
			
			
			this.wrapper=new VPAID_1_1_Wrapper((event.target as LoaderInfo).content, this.processor);
			
		}
		private function httpStatusHandler(event : HTTPStatusEvent) : void {
			trace("httpStatusHandler: " + event);
		}
		private function initHandler(event : Event) : void {
			trace("initHandler: " + event);
		}
		private function ioErrorHandler(event : IOErrorEvent) : void {
			trace("ioErrorHandler: " + event);
		}
		private function openHandler(event : Event) : void {
			trace("openHandler: " + event);
		}
		private function progressHandler(event : ProgressEvent) : void {
			trace("progressHandler: bytesLoaded=" + event.bytesLoaded + " bytesTotal=" + event.bytesTotal);
		}
		private function unLoadHandler(event : Event) : void {
			trace("unLoadHandler: " + event);
		}
			
		}
	}
}
