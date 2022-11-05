package com.mdotm.android.http;

import android.content.Context;
import com.mdotm.android.database.MdotMCacheHandler;
import com.mdotm.android.utils.MdotMLogger;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public class MdotMNatiiveContentDownloader {
    protected static boolean isVastDownloadError = false;
    private String MdotM_Native_caching = MdotMCacheHandler.TABLE_NAME_AD_NATIVE;
    File cacheDirectory;
    String fileName;
    File localFile;

    public void downloadNativeResources(String str, int i, Context context) throws IOException {
        MdotMCacheHandler.getInstance(context).deleteNative(context);
        this.fileName = getFileName(str);
        this.cacheDirectory = new File(context.getCacheDir() + "/" + MdotMNetworkManager.MdotM_CACHE_FOLDER + "/" + this.MdotM_Native_caching);
        if (!this.cacheDirectory.exists()) {
            MdotMLogger.d(this, "BitMap" + this.cacheDirectory.mkdirs());
        }
        this.localFile = new File(this.cacheDirectory, this.fileName);
        if (!this.localFile.exists()) {
            InputStream downloadFile = new MdotMFileDownloader().downloadFile(context, str);
            if (downloadFile == null) {
                MdotMLogger.i(this, "unable to download file");
                return;
            }
            MdotMLogger.d(this, "inserting file neme to ad cache1 native " + this.fileName);
            if (!this.localFile.exists()) {
                MdotMLogger.d(this, "BitMap1" + this.localFile.createNewFile());
            }
            new MdotMFileDownloader().writeStreamToFile(downloadFile, this.localFile);
            new FileInputStream(new File(this.cacheDirectory, this.fileName));
            try {
                MdotMCacheHandler.getInstance(context).insertNative(this.fileName, MdotMCacheHandler.TABLE_NAME_AD_NATIVE);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        MdotMLogger.d(this, "file native already exist.. no need to download");
    }

    private String getFileName(String str) {
        return str.replace("\\", "").replace("/", "").replace(".", "").replace(":", "").replace("?", "");
    }
}
