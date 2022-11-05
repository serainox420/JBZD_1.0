package com.facebook.imagepipeline.producers;

import android.net.Uri;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.producers.NetworkFetcher;
import com.millennialmedia.NativeAd;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
/* loaded from: classes.dex */
public class HttpUrlConnectionNetworkFetcher extends BaseNetworkFetcher<FetchState> {
    public static final int HTTP_PERMANENT_REDIRECT = 308;
    public static final int HTTP_TEMPORARY_REDIRECT = 307;
    private static final int MAX_REDIRECTS = 5;
    private static final int NUM_NETWORK_THREADS = 3;
    private final ExecutorService mExecutorService;

    public HttpUrlConnectionNetworkFetcher() {
        this(Executors.newFixedThreadPool(3));
    }

    @VisibleForTesting
    HttpUrlConnectionNetworkFetcher(ExecutorService executorService) {
        this.mExecutorService = executorService;
    }

    @Override // com.facebook.imagepipeline.producers.NetworkFetcher
    public FetchState createFetchState(Consumer<EncodedImage> consumer, ProducerContext producerContext) {
        return new FetchState(consumer, producerContext);
    }

    @Override // com.facebook.imagepipeline.producers.NetworkFetcher
    public void fetch(final FetchState fetchState, final NetworkFetcher.Callback callback) {
        final Future<?> submit = this.mExecutorService.submit(new Runnable() { // from class: com.facebook.imagepipeline.producers.HttpUrlConnectionNetworkFetcher.1
            @Override // java.lang.Runnable
            public void run() {
                HttpUrlConnectionNetworkFetcher.this.fetchSync(fetchState, callback);
            }
        });
        fetchState.getContext().addCallbacks(new BaseProducerContextCallbacks() { // from class: com.facebook.imagepipeline.producers.HttpUrlConnectionNetworkFetcher.2
            @Override // com.facebook.imagepipeline.producers.BaseProducerContextCallbacks, com.facebook.imagepipeline.producers.ProducerContextCallbacks
            public void onCancellationRequested() {
                if (submit.cancel(false)) {
                    callback.onCancellation();
                }
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0033 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.net.HttpURLConnection, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.facebook.imagepipeline.producers.NetworkFetcher$Callback] */
    @VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void fetchSync(FetchState fetchState, NetworkFetcher.Callback callback) {
        HttpURLConnection httpURLConnection;
        ?? r1 = 0;
        r1 = 0;
        InputStream inputStream = null;
        try {
            try {
                httpURLConnection = downloadFrom(fetchState.getUri(), 5);
                if (httpURLConnection != null) {
                    try {
                        r1 = httpURLConnection.getInputStream();
                        callback.onResponse(r1, -1);
                        inputStream = r1;
                    } catch (IOException e) {
                        e = e;
                        callback.onFailure(e);
                        if (r1 != 0) {
                            try {
                                r1.close();
                            } catch (IOException e2) {
                            }
                        }
                        if (httpURLConnection == null) {
                            return;
                        }
                        httpURLConnection.disconnect();
                        return;
                    }
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e3) {
                    }
                }
                if (httpURLConnection == null) {
                    return;
                }
                httpURLConnection.disconnect();
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    try {
                        r1.close();
                    } catch (IOException e4) {
                    }
                }
                if (0 != 0) {
                    r1.disconnect();
                }
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            httpURLConnection = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
            }
            if (0 != 0) {
            }
            throw th;
        }
    }

    private HttpURLConnection downloadFrom(Uri uri, int i) throws IOException {
        HttpURLConnection openConnectionTo = openConnectionTo(uri);
        int responseCode = openConnectionTo.getResponseCode();
        if (!isHttpSuccess(responseCode)) {
            if (isHttpRedirect(responseCode)) {
                String headerField = openConnectionTo.getHeaderField("Location");
                openConnectionTo.disconnect();
                Uri parse = headerField == null ? null : Uri.parse(headerField);
                String scheme = uri.getScheme();
                if (i > 0 && parse != null && !parse.getScheme().equals(scheme)) {
                    return downloadFrom(parse, i - 1);
                }
                throw new IOException(i == 0 ? error("URL %s follows too many redirects", uri.toString()) : error("URL %s returned %d without a valid redirect", uri.toString(), Integer.valueOf(responseCode)));
            }
            openConnectionTo.disconnect();
            throw new IOException(String.format("Image URL %s returned HTTP code %d", uri.toString(), Integer.valueOf(responseCode)));
        }
        return openConnectionTo;
    }

    @VisibleForTesting
    static HttpURLConnection openConnectionTo(Uri uri) throws IOException {
        return (HttpURLConnection) new URL(uri.toString()).openConnection();
    }

    private static boolean isHttpSuccess(int i) {
        return i >= 200 && i < 300;
    }

    private static boolean isHttpRedirect(int i) {
        switch (i) {
            case 300:
            case NativeAd.NativeErrorStatus.EXPIRED /* 301 */:
            case 302:
            case 303:
            case 307:
            case 308:
                return true;
            case 304:
            case 305:
            case 306:
            default:
                return false;
        }
    }

    private static String error(String str, Object... objArr) {
        return String.format(Locale.getDefault(), str, objArr);
    }
}
