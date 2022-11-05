package com.facebook.internal;

import android.net.Uri;
import com.facebook.LoggingBehavior;
import com.facebook.internal.FileLruCache;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class UrlRedirectCache {
    private static volatile FileLruCache urlRedirectCache;
    static final String TAG = UrlRedirectCache.class.getSimpleName();
    private static final String REDIRECT_CONTENT_TAG = TAG + "_Redirect";

    UrlRedirectCache() {
    }

    static synchronized FileLruCache getCache() throws IOException {
        FileLruCache fileLruCache;
        synchronized (UrlRedirectCache.class) {
            if (urlRedirectCache == null) {
                urlRedirectCache = new FileLruCache(TAG, new FileLruCache.Limits());
            }
            fileLruCache = urlRedirectCache;
        }
        return fileLruCache;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Uri getRedirectedUri(Uri uri) {
        InputStreamReader inputStreamReader;
        Throwable th;
        Uri uri2 = null;
        boolean z = false;
        if (uri != null) {
            String uri3 = uri.toString();
            try {
                FileLruCache cache = getCache();
                String str = uri3;
                InputStreamReader inputStreamReader2 = null;
                while (true) {
                    try {
                        InputStream inputStream = cache.get(str, REDIRECT_CONTENT_TAG);
                        if (inputStream == null) {
                            break;
                        }
                        inputStreamReader = new InputStreamReader(inputStream);
                        try {
                            char[] cArr = new char[128];
                            StringBuilder sb = new StringBuilder();
                            while (true) {
                                int read = inputStreamReader.read(cArr, 0, cArr.length);
                                if (read <= 0) {
                                    break;
                                }
                                sb.append(cArr, 0, read);
                            }
                            Utility.closeQuietly(inputStreamReader);
                            str = sb.toString();
                            inputStreamReader2 = inputStreamReader;
                            z = true;
                        } catch (IOException e) {
                            Utility.closeQuietly(inputStreamReader);
                            return uri2;
                        } catch (Throwable th2) {
                            th = th2;
                            Utility.closeQuietly(inputStreamReader);
                            throw th;
                        }
                    } catch (IOException e2) {
                        inputStreamReader = inputStreamReader2;
                    } catch (Throwable th3) {
                        th = th3;
                        inputStreamReader = inputStreamReader2;
                    }
                }
                if (z) {
                    uri2 = Uri.parse(str);
                    Utility.closeQuietly(inputStreamReader2);
                } else {
                    Utility.closeQuietly(inputStreamReader2);
                }
            } catch (IOException e3) {
                inputStreamReader = null;
            } catch (Throwable th4) {
                inputStreamReader = null;
                th = th4;
            }
        }
        return uri2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void cacheUriRedirect(Uri uri, Uri uri2) {
        OutputStream outputStream;
        Throwable th;
        if (uri != null && uri2 != null) {
            try {
                try {
                    OutputStream openPutStream = getCache().openPutStream(uri.toString(), REDIRECT_CONTENT_TAG);
                    try {
                        openPutStream.write(uri2.toString().getBytes());
                        Utility.closeQuietly(openPutStream);
                    } catch (Throwable th2) {
                        outputStream = openPutStream;
                        th = th2;
                        Utility.closeQuietly(outputStream);
                        throw th;
                    }
                } catch (IOException e) {
                    Utility.closeQuietly(null);
                }
            } catch (Throwable th3) {
                outputStream = null;
                th = th3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void clearCache() {
        try {
            getCache().clearCache();
        } catch (IOException e) {
            Logger.log(LoggingBehavior.CACHE, 5, TAG, "clearCache failed " + e.getMessage());
        }
    }
}
