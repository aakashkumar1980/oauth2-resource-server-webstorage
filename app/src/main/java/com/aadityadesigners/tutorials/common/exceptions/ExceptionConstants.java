package com.aadityadesigners.tutorials.common.exceptions;

import com.aadityadesigners.tutorials.utils.AppConstants;

public class ExceptionConstants {
    
    public static String TECHNICAL_EXCEPTION= AppConstants.APP_DESCRIPTION+"_"+"TECHNICAL_EXCEPTION";
    
    // TEMPLATES
	public static final String _TECHNICAL_ERROR_MESSAGE_TEMPLATE= 
		"["+ExceptionConstants.TECHNICAL_EXCEPTION+"] "
		+"%s->%s"; 
}
