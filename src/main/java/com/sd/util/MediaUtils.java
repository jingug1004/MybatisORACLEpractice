package com.sd.util;

import org.springframework.http.MediaType;

import java.util.HashMap;
import java.util.Map;

public class MediaUtils {

    private static Map<String, MediaType> mediaTypeMap;

    static {
        mediaTypeMap = new HashMap<String, MediaType>();
        mediaTypeMap.put("GIF", MediaType.IMAGE_GIF);
        mediaTypeMap.put("PNG", MediaType.IMAGE_PNG);
        mediaTypeMap.put("JPG", MediaType.IMAGE_JPEG);
        mediaTypeMap.put("JPEG", MediaType.IMAGE_JPEG);
    }

    public static MediaType getMediaType(String type) {
        return mediaTypeMap.get(type.toUpperCase());
    }
}