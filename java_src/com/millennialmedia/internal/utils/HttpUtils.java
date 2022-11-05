package com.millennialmedia.internal.utils;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.monetization.internal.Constants;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.AdMetadata;
import com.millennialmedia.internal.utils.IOUtils;
import com.mopub.common.AdType;
import com.pubmatic.sdk.common.CommonConstants;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
/* loaded from: classes3.dex */
public class HttpUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4170a = HttpUtils.class.getSimpleName();
    public static HttpRequestHandler httpRequestHandler = new HttpRequestHandler();

    /* loaded from: classes3.dex */
    public static class Response {
        public AdMetadata adMetadata;
        public Bitmap bitmap;
        public int code;
        public String content;
        public String contentType;
        public File file;
    }

    /* loaded from: classes3.dex */
    public interface ResponseStreamer {
        void streamContent(InputStream inputStream, Response response);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class HttpRequestRunner implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private boolean f4171a;
        private long b;
        private String c;
        private String d;
        private String e;
        private int f;
        private ResponseStreamer g;
        private Response h;

        HttpRequestRunner(long j, String str, String str2, String str3, int i, ResponseStreamer responseStreamer) {
            this.b = j;
            this.c = str;
            this.d = str2;
            this.e = str3;
            this.f = i;
            this.g = responseStreamer;
        }

        /* JADX WARN: Removed duplicated region for block: B:36:0x0106  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x010a  */
        /* JADX WARN: Removed duplicated region for block: B:80:0x0208  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x020c  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            OutputStream outputStream;
            InputStream inputStream;
            InputStream inputStream2;
            InputStream inputStream3;
            InputStream inputStream4;
            HttpURLConnection httpURLConnection = null;
            this.h = new Response();
            try {
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(this.c).openConnection();
                try {
                    httpURLConnection2.setReadTimeout(this.f);
                    httpURLConnection2.setConnectTimeout(this.f);
                    httpURLConnection2.setInstanceFollowRedirects(true);
                    httpURLConnection2.setUseCaches(false);
                    httpURLConnection2.setDoInput(true);
                    httpURLConnection2.setRequestProperty("User-Agent", EnvironmentUtils.getUserAgent());
                    if (httpURLConnection2 instanceof HttpsURLConnection) {
                        if (MMLog.isDebugEnabled()) {
                            MMLog.d(HttpUtils.f4170a, "HttpsURLConnection created");
                        }
                        MMSSLSocketFactory mMSSLSocketFactory = MMSSLSocketFactory.getInstance();
                        if (mMSSLSocketFactory != null) {
                            ((HttpsURLConnection) httpURLConnection2).setSSLSocketFactory(mMSSLSocketFactory);
                        }
                    }
                    if (this.d == null) {
                        httpURLConnection2.setRequestMethod("GET");
                        httpURLConnection2.connect();
                    } else {
                        httpURLConnection2.setDoOutput(true);
                        httpURLConnection2.setRequestMethod("POST");
                        httpURLConnection2.setRequestProperty("Content-Type", this.e);
                        httpURLConnection2.setRequestProperty("Content-Length", "" + this.d.getBytes().length);
                        OutputStream outputStream2 = httpURLConnection2.getOutputStream();
                        try {
                            IOUtils.write(outputStream2, this.d);
                            outputStream2.flush();
                            IOUtils.closeStream(outputStream2);
                        } catch (IOException e) {
                            inputStream2 = null;
                            e = e;
                            outputStream = outputStream2;
                            inputStream = null;
                            httpURLConnection = httpURLConnection2;
                            try {
                                this.h.code = 400;
                                MMLog.e(HttpUtils.f4170a, String.format(Locale.getDefault(), "Error occurred when trying to get response content.\n\texception: %s\n\turl: %s\n\tpost data: %s\n\tpost content type: %s\n\ttimeout: %d\n\trequestId: %d", e.toString(), this.c, this.d, this.e, Integer.valueOf(this.f), Long.valueOf(this.b)));
                                IOUtils.closeStream(inputStream2);
                                IOUtils.closeStream(outputStream);
                                IOUtils.closeStream(inputStream);
                                if (httpURLConnection != null) {
                                }
                                synchronized (this) {
                                }
                            } catch (Throwable th) {
                                th = th;
                                IOUtils.closeStream(inputStream2);
                                IOUtils.closeStream(outputStream);
                                IOUtils.closeStream(inputStream);
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                synchronized (this) {
                                    this.f4171a = true;
                                    notify();
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            inputStream2 = null;
                            th = th2;
                            outputStream = outputStream2;
                            inputStream = null;
                            httpURLConnection = httpURLConnection2;
                            IOUtils.closeStream(inputStream2);
                            IOUtils.closeStream(outputStream);
                            IOUtils.closeStream(inputStream);
                            if (httpURLConnection != null) {
                            }
                            synchronized (this) {
                            }
                        }
                    }
                    Map<String, List<String>> headerFields = httpURLConnection2.getHeaderFields();
                    if (headerFields != null && !headerFields.isEmpty()) {
                        AdMetadata adMetadata = new AdMetadata();
                        for (Map.Entry<String, List<String>> entry : headerFields.entrySet()) {
                            if (entry.getKey() != null) {
                                adMetadata.put(entry.getKey(), (entry.getValue() == null || entry.getValue().isEmpty()) ? null : entry.getValue().get(0));
                            }
                        }
                        this.h.adMetadata = adMetadata;
                    }
                    int responseCode = httpURLConnection2.getResponseCode();
                    this.h.code = responseCode;
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(HttpUtils.f4170a, String.format(Locale.getDefault(), "Received response for:\n\turl: %s\n\tcode: %d", this.c, Integer.valueOf(responseCode)));
                    }
                    if (responseCode == 200) {
                        this.h.contentType = httpURLConnection2.getContentType();
                        InputStream inputStream5 = httpURLConnection2.getInputStream();
                        try {
                            this.g.streamContent(inputStream5, this.h);
                            inputStream4 = inputStream5;
                            inputStream3 = null;
                        } catch (IOException e2) {
                            inputStream2 = inputStream5;
                            outputStream = null;
                            e = e2;
                            inputStream = null;
                            httpURLConnection = httpURLConnection2;
                            this.h.code = 400;
                            MMLog.e(HttpUtils.f4170a, String.format(Locale.getDefault(), "Error occurred when trying to get response content.\n\texception: %s\n\turl: %s\n\tpost data: %s\n\tpost content type: %s\n\ttimeout: %d\n\trequestId: %d", e.toString(), this.c, this.d, this.e, Integer.valueOf(this.f), Long.valueOf(this.b)));
                            IOUtils.closeStream(inputStream2);
                            IOUtils.closeStream(outputStream);
                            IOUtils.closeStream(inputStream);
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            synchronized (this) {
                                this.f4171a = true;
                                notify();
                            }
                            return;
                        } catch (Throwable th3) {
                            inputStream2 = inputStream5;
                            outputStream = null;
                            th = th3;
                            inputStream = null;
                            httpURLConnection = httpURLConnection2;
                            IOUtils.closeStream(inputStream2);
                            IOUtils.closeStream(outputStream);
                            IOUtils.closeStream(inputStream);
                            if (httpURLConnection != null) {
                            }
                            synchronized (this) {
                            }
                        }
                    } else if (responseCode >= 400) {
                        inputStream3 = httpURLConnection2.getErrorStream();
                        try {
                            MMLog.e(HttpUtils.f4170a, String.format(Locale.getDefault(), "HTTP ERROR.\n\tcode: %d\n\tmessage: %s\n\trequestId: %d", Integer.valueOf(responseCode), IOUtils.convertStreamToString(inputStream3), Long.valueOf(this.b)));
                            inputStream4 = null;
                        } catch (IOException e3) {
                            inputStream2 = null;
                            e = e3;
                            inputStream = inputStream3;
                            outputStream = null;
                            httpURLConnection = httpURLConnection2;
                            this.h.code = 400;
                            MMLog.e(HttpUtils.f4170a, String.format(Locale.getDefault(), "Error occurred when trying to get response content.\n\texception: %s\n\turl: %s\n\tpost data: %s\n\tpost content type: %s\n\ttimeout: %d\n\trequestId: %d", e.toString(), this.c, this.d, this.e, Integer.valueOf(this.f), Long.valueOf(this.b)));
                            IOUtils.closeStream(inputStream2);
                            IOUtils.closeStream(outputStream);
                            IOUtils.closeStream(inputStream);
                            if (httpURLConnection != null) {
                            }
                            synchronized (this) {
                            }
                        } catch (Throwable th4) {
                            inputStream2 = null;
                            th = th4;
                            inputStream = inputStream3;
                            outputStream = null;
                            httpURLConnection = httpURLConnection2;
                            IOUtils.closeStream(inputStream2);
                            IOUtils.closeStream(outputStream);
                            IOUtils.closeStream(inputStream);
                            if (httpURLConnection != null) {
                            }
                            synchronized (this) {
                            }
                        }
                    } else {
                        inputStream3 = null;
                        inputStream4 = null;
                    }
                    IOUtils.closeStream(inputStream4);
                    IOUtils.closeStream(null);
                    IOUtils.closeStream(inputStream3);
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    synchronized (this) {
                        this.f4171a = true;
                        notify();
                    }
                } catch (IOException e4) {
                    inputStream = null;
                    inputStream2 = null;
                    httpURLConnection = httpURLConnection2;
                    e = e4;
                    outputStream = null;
                } catch (Throwable th5) {
                    inputStream = null;
                    inputStream2 = null;
                    httpURLConnection = httpURLConnection2;
                    th = th5;
                    outputStream = null;
                }
            } catch (IOException e5) {
                e = e5;
                outputStream = null;
                inputStream = null;
                inputStream2 = null;
            } catch (Throwable th6) {
                th = th6;
                outputStream = null;
                inputStream = null;
                inputStream2 = null;
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class HttpRequestHandler {
        public Response sendHttpRequest(String str, String str2, String str3, Integer num, ResponseStreamer responseStreamer) {
            Response response;
            String str4;
            Response response2 = new Response();
            long currentTimeMillis = System.currentTimeMillis();
            int intValue = num == null ? Constants.HTTP_TIMEOUT : num.intValue();
            if (MMLog.isDebugEnabled()) {
                MMLog.d(HttpUtils.f4170a, String.format(Locale.getDefault(), "Sending Http request\n\turl: %s\n\tpost data: %s\n\tcontent type: %s\n\trequestId: %d", str, str2, str3, Long.valueOf(currentTimeMillis)));
            }
            HttpRequestRunner httpRequestRunner = new HttpRequestRunner(currentTimeMillis, str, str2, str3, intValue, responseStreamer);
            synchronized (httpRequestRunner) {
                ThreadUtils.runOnWorkerThread(httpRequestRunner);
                try {
                    httpRequestRunner.wait(intValue);
                    if (httpRequestRunner.f4171a) {
                        response2 = httpRequestRunner.h;
                    } else {
                        response2.code = AdTrackerConstants.NETWORK_TIMEOUT;
                        if (MMLog.isDebugEnabled()) {
                            MMLog.d(HttpUtils.f4170a, String.format(Locale.getDefault(), "HTTP request timed out.\n\turl: %s\n\tpost data: %s\n\tcontent type: %s\n\trequestId: %d", str, str2, str3, Long.valueOf(currentTimeMillis)));
                        }
                    }
                    response = response2;
                } catch (InterruptedException e) {
                    MMLog.e(HttpUtils.f4170a, "Interrupted while waiting for HTTP request to complete.  Aborting");
                    response2.code = 400;
                    response = response2;
                }
            }
            if (MMLog.isDebugEnabled()) {
                if (!TextUtils.isEmpty(response.content)) {
                    if (response.contentType == null || response.contentType.contains(CommonConstants.RESPONSE_TEXT) || response.contentType.contains(AdType.STATIC_NATIVE)) {
                        str4 = response.content;
                    } else {
                        str4 = "<non-text-content>";
                    }
                    MMLog.d(HttpUtils.f4170a, String.format(Locale.getDefault(), "Http text response. \n\tcode: %d\n\trequestId: %d\n\tcontent-type: %s\n\tcontent: %s", Integer.valueOf(response.code), Long.valueOf(currentTimeMillis), response.contentType, str4));
                } else if (response.bitmap != null) {
                    MMLog.d(HttpUtils.f4170a, String.format(Locale.getDefault(), "Http bitmap response.\n\tcode: %d\n\trequestId: %d\n\tcontent-type: %s\n\tbitmap dimensions: %d x %d\n\tbitmap size: %d", Integer.valueOf(response.code), Long.valueOf(currentTimeMillis), response.contentType, Integer.valueOf(response.bitmap.getWidth()), Integer.valueOf(response.bitmap.getHeight()), Integer.valueOf(response.bitmap.getByteCount())));
                } else if (response.file != null) {
                    MMLog.d(HttpUtils.f4170a, String.format(Locale.getDefault(), "Http file response.\n\tcode: %d\n\tcontent-type: %s\n\trequestId: %d\n\tfile: %s", Integer.valueOf(response.code), response.contentType, Long.valueOf(currentTimeMillis), response.file.getAbsolutePath()));
                } else {
                    MMLog.d(HttpUtils.f4170a, String.format(Locale.getDefault(), "Http response.\n\tcode: %d\n\tcontent-type: %s\n\trequestId: %d", Integer.valueOf(response.code), response.contentType, Long.valueOf(currentTimeMillis)));
                }
            }
            return response;
        }
    }

    public static Response getContentFromGetRequest(String str) {
        return httpRequestHandler.sendHttpRequest(str, null, null, null, new IOUtils.StringStreamer());
    }

    public static Response getContentFromGetRequest(String str, int i) {
        return httpRequestHandler.sendHttpRequest(str, null, null, Integer.valueOf(i), new IOUtils.StringStreamer());
    }

    public static Response getContentFromPostRequest(String str, String str2, String str3) {
        return httpRequestHandler.sendHttpRequest(str, str2, str3, null, new IOUtils.StringStreamer());
    }

    public static Response getContentFromPostRequest(String str, String str2, String str3, int i) {
        return httpRequestHandler.sendHttpRequest(str, str2, str3, Integer.valueOf(i), new IOUtils.StringStreamer());
    }

    public static Response getBitmapFromGetRequest(String str) {
        return httpRequestHandler.sendHttpRequest(str, null, null, null, new IOUtils.BitmapStreamer());
    }

    public static Response getContentFromPostRequest(String str, int i) {
        return httpRequestHandler.sendHttpRequest(str, null, null, Integer.valueOf(i), new IOUtils.StringStreamer());
    }
}
