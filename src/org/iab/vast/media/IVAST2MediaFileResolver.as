/*****************************************************
*  
*  Copyright 2010 Eyewonder, LLC.  All Rights Reserved.
*  
*****************************************************
*  The contents of this file are subject to the Mozilla Public License
*  Version 1.1 (the "License"); you may not use this file except in
*  compliance with the License. You may obtain a copy of the License at
*  http://www.mozilla.org/MPL/
*   
*  Software distributed under the License is distributed on an "AS IS"
*  basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
*  License for the specific language governing rights and limitations
*  under the License.
*   
*  
*  The Initial Developer of the Original Code is Eyewonder, LLC.
*  Portions created by Eyewonder, LLC. are Copyright (C) 2010 
*  Eyewonder, LLC. A Limelight Networks Business. All Rights Reserved. 
*  
*****************************************************/
package org.iab.vast.media
{
	import org.iab.vast.model.VAST2MediaFile;
	
	
	/**
	 * When multiple media files are found in a VAST document, an arbitration is needed to 
	 * pick the most suitable VASTMediaFile. This class encapsulates the details of how to 
	 * pick the right VASTMediaFile out all those available from the VAST document.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 10
	 *  @playerversion AIR 1.5
	 *  @productversion OSMF 1.0
	 */
	public interface IVAST2MediaFileResolver
	{
		/**
		 * Return the VASTMediaFile to use, from the input list.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion OSMF 1.0
		 */
		function resolveMediaFiles(mediaFiles:Vector.<VAST2MediaFile>):VAST2MediaFile;		
	}
}
