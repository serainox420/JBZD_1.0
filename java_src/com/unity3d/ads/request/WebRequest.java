package com.unity3d.ads.request;

import com.unity3d.ads.log.DeviceLog;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
/* loaded from: classes3.dex */
public class WebRequest {
    private String _body;
    private boolean _canceled;
    private int _connectTimeout;
    private long _contentLength;
    private Map<String, List<String>> _headers;
    private IWebRequestProgressListener _progressListener;
    private int _readTimeout;
    private String _requestType;
    private int _responseCode;
    private Map<String, List<String>> _responseHeaders;
    private URL _url;

    /* loaded from: classes3.dex */
    public enum RequestType {
        POST,
        GET,
        HEAD
    }

    public WebRequest(String str, String str2, Map<String, List<String>> map) throws MalformedURLException {
        this(str, str2, map, 30000, 30000);
    }

    public WebRequest(String str, String str2, Map<String, List<String>> map, int i, int i2) throws MalformedURLException {
        this._requestType = RequestType.GET.name();
        this._responseCode = -1;
        this._contentLength = -1L;
        this._canceled = false;
        this._url = new URL(str);
        this._requestType = str2;
        this._headers = map;
        this._connectTimeout = i;
        this._readTimeout = i2;
    }

    public void cancel() {
        this._canceled = true;
    }

    public boolean isCanceled() {
        return this._canceled;
    }

    public URL getUrl() {
        return this._url;
    }

    public String getRequestType() {
        return this._requestType;
    }

    public String getBody() {
        return this._body;
    }

    public void setBody(String str) {
        this._body = str;
    }

    public String getQuery() {
        if (this._url != null) {
            return this._url.getQuery();
        }
        return null;
    }

    public Map<String, List<String>> getResponseHeaders() {
        return this._responseHeaders;
    }

    public Map<String, List<String>> getHeaders() {
        return this._headers;
    }

    public int getResponseCode() {
        return this._responseCode;
    }

    public long getContentLength() {
        return this._contentLength;
    }

    public int getConnectTimeout() {
        return this._connectTimeout;
    }

    public void setConnectTimeout(int i) {
        this._connectTimeout = i;
    }

    public int getReadTimeout() {
        return this._readTimeout;
    }

    public void setReadTimeout(int i) {
        this._readTimeout = i;
    }

    public void setProgressListener(IWebRequestProgressListener iWebRequestProgressListener) {
        this._progressListener = iWebRequestProgressListener;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00bb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long makeStreamRequest(OutputStream outputStream) throws IOException, IllegalStateException {
        InputStream inputStream;
        int read;
        HttpURLConnection httpUrlConnectionWithHeaders = getHttpUrlConnectionWithHeaders();
        httpUrlConnectionWithHeaders.setDoInput(true);
        String requestType = getRequestType();
        PrintWriter name = RequestType.POST.name();
        if (requestType.equals(name)) {
            httpUrlConnectionWithHeaders.setDoOutput(true);
            try {
                try {
                    PrintWriter printWriter = new PrintWriter((Writer) new OutputStreamWriter(httpUrlConnectionWithHeaders.getOutputStream(), "UTF-8"), true);
                    try {
                        if (getBody() == null) {
                            printWriter.print(getQuery());
                        } else {
                            printWriter.print(getBody());
                        }
                        printWriter.flush();
                        if (printWriter != null) {
                            try {
                                printWriter.close();
                            } catch (Exception e) {
                                DeviceLog.exception("Error closing writer", e);
                                throw e;
                            }
                        }
                    } catch (Exception e2) {
                        e = e2;
                        DeviceLog.exception("Error while writing POST params", e);
                        throw e;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (name != 0) {
                        try {
                            name.close();
                        } catch (Exception e3) {
                            DeviceLog.exception("Error closing writer", e3);
                            throw e3;
                        }
                    }
                    throw th;
                }
            } catch (Exception e4) {
                e = e4;
            } catch (Throwable th2) {
                th = th2;
                name = 0;
                if (name != 0) {
                }
                throw th;
            }
        }
        this._responseCode = httpUrlConnectionWithHeaders.getResponseCode();
        this._contentLength = httpUrlConnectionWithHeaders.getContentLength();
        if (httpUrlConnectionWithHeaders.getHeaderFields() != null) {
            this._responseHeaders = httpUrlConnectionWithHeaders.getHeaderFields();
        }
        try {
            inputStream = httpUrlConnectionWithHeaders.getInputStream();
        } catch (IOException e5) {
            InputStream errorStream = httpUrlConnectionWithHeaders.getErrorStream();
            if (errorStream == null) {
                throw new IOException("Can't open error stream");
            }
            inputStream = errorStream;
        }
        if (this._progressListener != null) {
            this._progressListener.onRequestStart(getUrl().toString(), this._contentLength, this._responseCode, this._responseHeaders);
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        long j = 0;
        byte[] bArr = new byte[4096];
        while (!isCanceled() && (read = bufferedInputStream.read(bArr)) != -1) {
            outputStream.write(bArr, 0, read);
            j += read;
            if (this._progressListener != null) {
                this._progressListener.onRequestProgress(getUrl().toString(), j, this._contentLength);
            }
        }
        httpUrlConnectionWithHeaders.disconnect();
        outputStream.flush();
        return j;
    }

    public String makeRequest() throws IOException, IllegalStateException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        makeStreamRequest(byteArrayOutputStream);
        return new String(byteArrayOutputStream.toByteArray());
    }

    private HttpURLConnection getHttpUrlConnectionWithHeaders() throws IOException {
        HttpsURLConnection httpsURLConnection;
        if (getUrl().toString().startsWith("https://")) {
            httpsURLConnection = (HttpsURLConnection) getUrl().openConnection();
        } else {
            httpsURLConnection = (HttpURLConnection) getUrl().openConnection();
        }
        httpsURLConnection.setInstanceFollowRedirects(false);
        httpsURLConnection.setConnectTimeout(getConnectTimeout());
        httpsURLConnection.setReadTimeout(getReadTimeout());
        httpsURLConnection.setRequestMethod(getRequestType());
        if (getHeaders() != null && getHeaders().size() > 0) {
            for (String str : getHeaders().keySet()) {
                for (String str2 : getHeaders().get(str)) {
                    DeviceLog.debug("Setting header: " + str + "=" + str2);
                    httpsURLConnection.setRequestProperty(str, str2);
                }
            }
        }
        return httpsURLConnection;
    }
}
