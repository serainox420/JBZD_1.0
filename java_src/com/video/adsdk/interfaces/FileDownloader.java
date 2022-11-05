package com.video.adsdk.interfaces;

import com.video.adsdk.internal.ADVideoFile;
import java.io.IOException;
/* loaded from: classes3.dex */
public interface FileDownloader {
    String copyInternalToExternal(String str) throws IOException;

    void deleteAllFiles();

    void deleteExpiredFiles();

    void downloadFile(ADVideoFile aDVideoFile) throws Exception;

    String getTargetDirectoryPath() throws IOException;

    void setDownloadProgressListener(DownloadProgressListener downloadProgressListener);
}
