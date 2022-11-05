package com.mopub.mobileads;

import android.os.AsyncTask;
import com.mopub.common.CacheService;
import com.mopub.common.MoPubHttpUrlConnection;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.common.util.Streams;
import java.io.BufferedInputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.ArrayDeque;
import java.util.Deque;
/* loaded from: classes.dex */
public class VideoDownloader {

    /* renamed from: a  reason: collision with root package name */
    private static final Deque<WeakReference<b>> f4498a = new ArrayDeque();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface a {
        void onComplete(boolean z);
    }

    private VideoDownloader() {
    }

    public static void cache(String str, a aVar) {
        Preconditions.checkNotNull(aVar);
        if (str == null) {
            MoPubLog.d("VideoDownloader attempted to cache video with null url.");
            aVar.onComplete(false);
            return;
        }
        try {
            AsyncTasks.safeExecuteOnExecutor(new b(aVar), str);
        } catch (Exception e) {
            aVar.onComplete(false);
        }
    }

    public static void cancelAllDownloaderTasks() {
        for (WeakReference<b> weakReference : f4498a) {
            a(weakReference);
        }
        f4498a.clear();
    }

    public static void cancelLastDownloadTask() {
        if (!f4498a.isEmpty()) {
            a(f4498a.peekLast());
            f4498a.removeLast();
        }
    }

    private static boolean a(WeakReference<b> weakReference) {
        b bVar;
        if (weakReference != null && (bVar = weakReference.get()) != null) {
            return bVar.cancel(true);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class b extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        private final a f4499a;
        private final WeakReference<b> b = new WeakReference<>(this);

        @VisibleForTesting
        b(a aVar) {
            this.f4499a = aVar;
            VideoDownloader.f4498a.add(this.b);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00b5  */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Boolean doInBackground(String... strArr) {
            BufferedInputStream bufferedInputStream;
            HttpURLConnection httpURLConnection;
            boolean z;
            HttpURLConnection httpURLConnection2 = null;
            if (strArr == null || strArr.length == 0 || strArr[0] == null) {
                MoPubLog.d("VideoDownloader task tried to execute null or empty url.");
                return false;
            }
            String str = strArr[0];
            try {
                httpURLConnection = MoPubHttpUrlConnection.getHttpUrlConnection(str);
                try {
                    bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                } catch (Exception e) {
                    e = e;
                    bufferedInputStream = null;
                    httpURLConnection2 = httpURLConnection;
                } catch (Throwable th) {
                    th = th;
                    bufferedInputStream = null;
                }
            } catch (Exception e2) {
                e = e2;
                bufferedInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                bufferedInputStream = null;
                httpURLConnection = null;
            }
            try {
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode < 200 || responseCode >= 300) {
                    MoPubLog.d("VideoDownloader encountered unexpected statusCode: " + responseCode);
                    z = false;
                    Streams.closeStream(bufferedInputStream);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                } else {
                    int contentLength = httpURLConnection.getContentLength();
                    if (contentLength > 26214400) {
                        MoPubLog.d(String.format("VideoDownloader encountered video larger than disk cap. (%d bytes / %d maximum).", Integer.valueOf(contentLength), 26214400));
                        z = false;
                        Streams.closeStream(bufferedInputStream);
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                    } else {
                        z = Boolean.valueOf(CacheService.putToDiskCache(str, bufferedInputStream));
                        Streams.closeStream(bufferedInputStream);
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                    }
                }
                return z;
            } catch (Exception e3) {
                e = e3;
                httpURLConnection2 = httpURLConnection;
                try {
                    MoPubLog.d("VideoDownloader task threw an internal exception.", e);
                    Streams.closeStream(bufferedInputStream);
                    if (httpURLConnection2 == null) {
                        return false;
                    }
                    httpURLConnection2.disconnect();
                    return false;
                } catch (Throwable th3) {
                    th = th3;
                    httpURLConnection = httpURLConnection2;
                    Streams.closeStream(bufferedInputStream);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                Streams.closeStream(bufferedInputStream);
                if (httpURLConnection != null) {
                }
                throw th;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public void onPostExecute(Boolean bool) {
            if (!isCancelled()) {
                VideoDownloader.f4498a.remove(this.b);
                if (bool == null) {
                    this.f4499a.onComplete(false);
                    return;
                } else {
                    this.f4499a.onComplete(bool.booleanValue());
                    return;
                }
            }
            onCancelled();
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            MoPubLog.d("VideoDownloader task was cancelled.");
            VideoDownloader.f4498a.remove(this.b);
            this.f4499a.onComplete(false);
        }
    }

    @VisibleForTesting
    @Deprecated
    public static Deque<WeakReference<b>> getDownloaderTasks() {
        return f4498a;
    }

    @VisibleForTesting
    @Deprecated
    public static void clearDownloaderTasks() {
        f4498a.clear();
    }
}
