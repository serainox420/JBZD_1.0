package com.commit451.youtubeextractor;

import java.io.IOException;
/* loaded from: classes.dex */
public class YouTubeExtractionException extends IOException {
    public int errorCode;

    public YouTubeExtractionException(int i, String str) {
        super(str);
        this.errorCode = 0;
        this.errorCode = i;
    }
}
