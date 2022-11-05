package com.facebook.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.facebook.FacebookException;
import com.facebook.R;
import com.facebook.internal.ImageRequest;
import com.facebook.internal.WorkQueue;
import com.google.firebase.a.a;
import com.millennialmedia.NativeAd;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class ImageDownloader {
    private static final int CACHE_READ_QUEUE_MAX_CONCURRENT = 2;
    private static final int DOWNLOAD_QUEUE_MAX_CONCURRENT = 8;
    private static Handler handler;
    private static WorkQueue downloadQueue = new WorkQueue(8);
    private static WorkQueue cacheReadQueue = new WorkQueue(2);
    private static final Map<RequestKey, DownloaderContext> pendingRequests = new HashMap();

    public static void downloadAsync(ImageRequest imageRequest) {
        if (imageRequest != null) {
            RequestKey requestKey = new RequestKey(imageRequest.getImageUri(), imageRequest.getCallerTag());
            synchronized (pendingRequests) {
                DownloaderContext downloaderContext = pendingRequests.get(requestKey);
                if (downloaderContext != null) {
                    downloaderContext.request = imageRequest;
                    downloaderContext.isCancelled = false;
                    downloaderContext.workItem.moveToFront();
                } else {
                    enqueueCacheRead(imageRequest, requestKey, imageRequest.isCachedRedirectAllowed());
                }
            }
        }
    }

    public static boolean cancelRequest(ImageRequest imageRequest) {
        boolean z;
        RequestKey requestKey = new RequestKey(imageRequest.getImageUri(), imageRequest.getCallerTag());
        synchronized (pendingRequests) {
            DownloaderContext downloaderContext = pendingRequests.get(requestKey);
            if (downloaderContext == null) {
                z = false;
            } else if (downloaderContext.workItem.cancel()) {
                pendingRequests.remove(requestKey);
                z = true;
            } else {
                downloaderContext.isCancelled = true;
                z = true;
            }
        }
        return z;
    }

    public static void prioritizeRequest(ImageRequest imageRequest) {
        RequestKey requestKey = new RequestKey(imageRequest.getImageUri(), imageRequest.getCallerTag());
        synchronized (pendingRequests) {
            DownloaderContext downloaderContext = pendingRequests.get(requestKey);
            if (downloaderContext != null) {
                downloaderContext.workItem.moveToFront();
            }
        }
    }

    public static void clearCache(Context context) {
        ImageResponseCache.clearCache(context);
        UrlRedirectCache.clearCache();
    }

    private static void enqueueCacheRead(ImageRequest imageRequest, RequestKey requestKey, boolean z) {
        enqueueRequest(imageRequest, requestKey, cacheReadQueue, new CacheReadWorkItem(imageRequest.getContext(), requestKey, z));
    }

    private static void enqueueDownload(ImageRequest imageRequest, RequestKey requestKey) {
        enqueueRequest(imageRequest, requestKey, downloadQueue, new DownloadImageWorkItem(imageRequest.getContext(), requestKey));
    }

    private static void enqueueRequest(ImageRequest imageRequest, RequestKey requestKey, WorkQueue workQueue, Runnable runnable) {
        synchronized (pendingRequests) {
            DownloaderContext downloaderContext = new DownloaderContext();
            downloaderContext.request = imageRequest;
            pendingRequests.put(requestKey, downloaderContext);
            downloaderContext.workItem = workQueue.addActiveWorkItem(runnable);
        }
    }

    private static void issueResponse(RequestKey requestKey, final Exception exc, final Bitmap bitmap, final boolean z) {
        final ImageRequest imageRequest;
        final ImageRequest.Callback callback;
        DownloaderContext removePendingRequest = removePendingRequest(requestKey);
        if (removePendingRequest != null && !removePendingRequest.isCancelled && (callback = (imageRequest = removePendingRequest.request).getCallback()) != null) {
            getHandler().post(new Runnable() { // from class: com.facebook.internal.ImageDownloader.1
                @Override // java.lang.Runnable
                public void run() {
                    callback.onCompleted(new ImageResponse(ImageRequest.this, exc, z, bitmap));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void readFromCache(RequestKey requestKey, Context context, boolean z) {
        boolean z2;
        InputStream inputStream;
        Uri redirectedUri;
        boolean z3 = false;
        if (!z || (redirectedUri = UrlRedirectCache.getRedirectedUri(requestKey.uri)) == null) {
            z2 = false;
            inputStream = null;
        } else {
            InputStream cachedImageStream = ImageResponseCache.getCachedImageStream(redirectedUri, context);
            if (cachedImageStream != null) {
                z3 = true;
            }
            boolean z4 = z3;
            inputStream = cachedImageStream;
            z2 = z4;
        }
        if (!z2) {
            inputStream = ImageResponseCache.getCachedImageStream(requestKey.uri, context);
        }
        if (inputStream != null) {
            Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
            Utility.closeQuietly(inputStream);
            issueResponse(requestKey, null, decodeStream, z2);
            return;
        }
        DownloaderContext removePendingRequest = removePendingRequest(requestKey);
        if (removePendingRequest != null && !removePendingRequest.isCancelled) {
            enqueueDownload(removePendingRequest.request, requestKey);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 5, insn: 0x00a1: MOVE  (r3 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]), block:B:36:0x00a1 */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void download(RequestKey requestKey, Context context) {
        HttpURLConnection httpURLConnection;
        Closeable closeable;
        HttpURLConnection httpURLConnection2;
        FacebookException facebookException;
        Closeable closeable2;
        FacebookException facebookException2;
        InputStream inputStream;
        Closeable closeable3 = null;
        r3 = null;
        r3 = null;
        r3 = null;
        closeable3 = null;
        Bitmap bitmap = null;
        boolean z = true;
        try {
            HttpURLConnection httpURLConnection3 = (HttpURLConnection) new URL(requestKey.uri.toString()).openConnection();
            try {
                try {
                    httpURLConnection3.setInstanceFollowRedirects(false);
                } catch (IOException e) {
                    closeable = null;
                    httpURLConnection2 = httpURLConnection3;
                    e = e;
                }
            } catch (Throwable th) {
                httpURLConnection = httpURLConnection3;
                th = th;
            }
            try {
                switch (httpURLConnection3.getResponseCode()) {
                    case 200:
                        inputStream = ImageResponseCache.interceptAndCacheImageStream(context, httpURLConnection3);
                        facebookException2 = null;
                        bitmap = BitmapFactory.decodeStream(inputStream);
                        Utility.closeQuietly(inputStream);
                        Utility.disconnectQuietly(httpURLConnection3);
                        facebookException = facebookException2;
                        break;
                    case NativeAd.NativeErrorStatus.EXPIRED /* 301 */:
                    case 302:
                        try {
                            String headerField = httpURLConnection3.getHeaderField(a.b.LOCATION);
                            if (!Utility.isNullOrEmpty(headerField)) {
                                Uri parse = Uri.parse(headerField);
                                UrlRedirectCache.cacheUriRedirect(requestKey.uri, parse);
                                DownloaderContext removePendingRequest = removePendingRequest(requestKey);
                                if (removePendingRequest != null && !removePendingRequest.isCancelled) {
                                    enqueueCacheRead(removePendingRequest.request, new RequestKey(parse, requestKey.tag), false);
                                }
                                z = false;
                                facebookException2 = null;
                                inputStream = null;
                            } else {
                                z = false;
                                facebookException2 = null;
                                inputStream = null;
                            }
                            Utility.closeQuietly(inputStream);
                            Utility.disconnectQuietly(httpURLConnection3);
                            facebookException = facebookException2;
                        } catch (IOException e2) {
                            closeable = null;
                            httpURLConnection2 = httpURLConnection3;
                            e = e2;
                            z = false;
                            Utility.closeQuietly(closeable);
                            Utility.disconnectQuietly(httpURLConnection2);
                            facebookException = e;
                            if (!z) {
                            }
                        }
                        break;
                    default:
                        inputStream = httpURLConnection3.getErrorStream();
                        StringBuilder sb = new StringBuilder();
                        if (inputStream != null) {
                            InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
                            char[] cArr = new char[128];
                            while (true) {
                                int read = inputStreamReader.read(cArr, 0, cArr.length);
                                if (read > 0) {
                                    sb.append(cArr, 0, read);
                                } else {
                                    Utility.closeQuietly(inputStreamReader);
                                }
                            }
                        } else {
                            sb.append(context.getString(R.string.com_facebook_image_download_unknown_error));
                        }
                        facebookException2 = new FacebookException(sb.toString());
                        Utility.closeQuietly(inputStream);
                        Utility.disconnectQuietly(httpURLConnection3);
                        facebookException = facebookException2;
                        break;
                }
            } catch (IOException e3) {
                httpURLConnection2 = httpURLConnection3;
                e = e3;
            } catch (Throwable th2) {
                closeable3 = closeable2;
                httpURLConnection = httpURLConnection3;
                th = th2;
                Utility.closeQuietly(closeable3);
                Utility.disconnectQuietly(httpURLConnection);
                throw th;
            }
        } catch (IOException e4) {
            e = e4;
            closeable = null;
            httpURLConnection2 = null;
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection = null;
        }
        if (!z) {
            issueResponse(requestKey, facebookException, bitmap, false);
        }
    }

    private static synchronized Handler getHandler() {
        Handler handler2;
        synchronized (ImageDownloader.class) {
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler2 = handler;
        }
        return handler2;
    }

    private static DownloaderContext removePendingRequest(RequestKey requestKey) {
        DownloaderContext remove;
        synchronized (pendingRequests) {
            remove = pendingRequests.remove(requestKey);
        }
        return remove;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class RequestKey {
        private static final int HASH_MULTIPLIER = 37;
        private static final int HASH_SEED = 29;
        Object tag;
        Uri uri;

        RequestKey(Uri uri, Object obj) {
            this.uri = uri;
            this.tag = obj;
        }

        public int hashCode() {
            return ((this.uri.hashCode() + 1073) * 37) + this.tag.hashCode();
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof RequestKey)) {
                return false;
            }
            RequestKey requestKey = (RequestKey) obj;
            return requestKey.uri == this.uri && requestKey.tag == this.tag;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class DownloaderContext {
        boolean isCancelled;
        ImageRequest request;
        WorkQueue.WorkItem workItem;

        private DownloaderContext() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class CacheReadWorkItem implements Runnable {
        private boolean allowCachedRedirects;
        private Context context;
        private RequestKey key;

        CacheReadWorkItem(Context context, RequestKey requestKey, boolean z) {
            this.context = context;
            this.key = requestKey;
            this.allowCachedRedirects = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            ImageDownloader.readFromCache(this.key, this.context, this.allowCachedRedirects);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class DownloadImageWorkItem implements Runnable {
        private Context context;
        private RequestKey key;

        DownloadImageWorkItem(Context context, RequestKey requestKey) {
            this.context = context;
            this.key = requestKey;
        }

        @Override // java.lang.Runnable
        public void run() {
            ImageDownloader.download(this.key, this.context);
        }
    }
}
