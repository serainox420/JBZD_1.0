package com.video.adsdk.internal;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
/* loaded from: classes3.dex */
public class ADVideoFile {
    private long expirationDate;
    private String fileName;
    private boolean playAfterPrefetching;
    private String uid;
    private String url;

    public ADVideoFile(String str, long j, boolean z) throws MalformedURLException {
        this.playAfterPrefetching = false;
        this.url = str;
        this.expirationDate = j;
        this.playAfterPrefetching = z;
        makeUid(str);
        makeFileName(str);
    }

    private void makeUid(String str) {
        this.uid = Helper.md5(str);
    }

    private void makeFileName(String str) throws MalformedURLException {
        this.fileName = getFileNameFromVideoUrl(str);
    }

    private String getFileNameFromVideoUrl(String str) throws MalformedURLException {
        URL url = new URL(str);
        return Helper.md5(getAuthorityFromUrl(url) + url.getFile());
    }

    private String getAuthorityFromUrl(URL url) {
        return url.getAuthority().replaceAll("msp.smartstream.tv", "ms.smartstream.tv").replaceAll("(.*)\\.smartcdn.tv", "smartcdn.tv");
    }

    public boolean shouldPlayAfterPrefetching() {
        return this.playAfterPrefetching;
    }

    public String getUrl() {
        return this.url;
    }

    public long getExpirationDate() {
        return this.expirationDate;
    }

    public String getUid() {
        return this.uid;
    }

    public String getFilename() {
        return this.fileName;
    }

    public boolean isPrefetchedIn(String str) {
        return new File(str + this.fileName).exists();
    }
}
