package org.iab.vast.media {
	/**
	 * @author shsun
	 */
	public class AbstractVASTXMediaFileResolver {
		
		protected static const VIDEO_MIME_TYPES_SUPPORTED:Vector.<String> = Vector.<String>
		([
			"video/x-flv", 
			"video/x-f4v", 
			"video/mp4", 
			"video/mp4v-es", 
			"video/x-m4v", 
			"video/3gpp", 
			"video/3gpp2", 
			"video/quicktime",
			"application/x-shockwave-flash", 
		]);
		
	}
}
