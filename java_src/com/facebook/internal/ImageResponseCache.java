package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import com.facebook.LoggingBehavior;
import com.facebook.internal.FileLruCache;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ImageResponseCache {
    static final String TAG = ImageResponseCache.class.getSimpleName();
    private static volatile FileLruCache imageCache;

    ImageResponseCache() {
    }

    static synchronized FileLruCache getCache(Context context) throws IOException {
        FileLruCache fileLruCache;
        synchronized (ImageResponseCache.class) {
            if (imageCache == null) {
                imageCache = new FileLruCache(TAG, new FileLruCache.Limits());
            }
            fileLruCache = imageCache;
        }
        return fileLruCache;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static InputStream getCachedImageStream(Uri uri, Context context) {
        if (uri == null || !isCDNURL(uri)) {
            return null;
        }
        try {
            return getCache(context).get(uri.toString());
        } catch (IOException e) {
            Logger.log(LoggingBehavior.CACHE, 5, TAG, e.toString());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static InputStream interceptAndCacheImageStream(Context context, HttpURLConnection httpURLConnection) throws IOException {
        if (httpURLConnection.getResponseCode() != 200) {
            return null;
        }
        Uri parse = Uri.parse(httpURLConnection.getURL().toString());
        InputStream inputStream = httpURLConnection.getInputStream();
        try {
            if (isCDNURL(parse)) {
                return getCache(context).interceptAndPut(parse.toString(), new BufferedHttpInputStream(inputStream, httpURLConnection));
            }
            return inputStream;
        } catch (IOException e) {
            return inputStream;
        }
    }

    private static boolean isCDNURL(Uri uri) {
        if (uri != null) {
            String host = uri.getHost();
            if (host.endsWith("fbcdn.net")) {
                return true;
            }
            if (host.startsWith("fbcdn") && host.endsWith("akamaihd.net")) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void clearCache(Context context) {
        try {
            getCache(context).clearCache();
        } catch (IOException e) {
            Logger.log(LoggingBehavior.CACHE, 5, TAG, "clearCache failed " + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class BufferedHttpInputStream extends BufferedInputStream {
        HttpURLConnection connection;

        BufferedHttpInputStream(InputStream inputStream, HttpURLConnection httpURLConnection) {
            super(inputStream, Utility.DEFAULT_STREAM_BUFFER_SIZE);
            this.connection = httpURLConnection;
        }

        @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            Utility.disconnectQuietly(this.connection);
        }
    }
}
