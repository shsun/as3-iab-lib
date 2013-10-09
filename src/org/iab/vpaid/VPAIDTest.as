package org.iab.vpaid {
	import org.iab.vpaid.events.VPAIDEvent;
	import flash.display.DisplayObject;
	import flash.net.URLRequest;
	import flash.display.LoaderInfo;
	import flash.events.ProgressEvent;
	import flash.events.HTTPStatusEvent;
	import flash.events.IOErrorEvent;
	import flash.events.Event;
	import flash.display.Loader;
	import flash.display.Sprite;

	import org.iab.vpaid.model.IVPAID_2_0_Wrapper;
	import org.iab.vpaid.model.VPAID_2_0_Wrapper;

	/**
	 * @author shsun
	 */
	public class VPAIDTest extends Sprite {
		private var wrapper : IVPAID_2_0_Wrapper;

		public function VPAIDTest() {
			var loader : Loader = new Loader();
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
			this.addChild((event.target as LoaderInfo).content);
			//
			this.wrapper = new VPAID_2_0_Wrapper((event.target as LoaderInfo).content, 5, 0);
			this.wrapper.api.visible = false;
			if (this.wrapper.isValidVersion()) {
				this.wrapper.addEventListener(VPAIDEvent.AD_LOADED, null);
				this.wrapper.initVPAID(400, 300, "normal", desiredBitrate, creativeData, environmentVars);
			}
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
