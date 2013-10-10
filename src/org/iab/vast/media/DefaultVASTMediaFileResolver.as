package org.iab.vast.media {
	import org.iab.vast.model.VASTMediaFile;

	/**
	 * DefaultVASTMediaFileResolver implements IVASTMediaFileResolver. It provides
	 * a default implementation to pick a VASTMediaFile object out of all those
	 * available in a VAST document. 
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 10
	 *  @playerversion AIR 1.5
	 *  @productversion OSMF 1.0
	 */
	public class DefaultVASTMediaFileResolver extends AbstractVASTXMediaFileResolver implements IVASTMediaFileResolver {
		/**
		 * By default, return the first one with a supported MIME type.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		public function resolveMediaFiles(mediaFiles : Vector.<VASTMediaFile>) : VASTMediaFile {
			for (var i : int = 0; i < mediaFiles.length; i++) {
				if (supportsMimeType(mediaFiles[i].type)) {
					return mediaFiles[i];
				}
			}

			return null;
		}

		private static function supportsMimeType(mimeType : String) : Boolean {
			for each (var supportedMimeType:String in VIDEO_MIME_TYPES_SUPPORTED) {
				if (mimeType == supportedMimeType) {
					return true;
				}
			}

			return false;
		}
	}
}
