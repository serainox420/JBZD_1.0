package com.pubmatic.sdk.common.network;

import android.text.TextUtils;
import com.mopub.common.AdType;
import com.pubmatic.sdk.common.CommonConstants;
import com.pubmatic.sdk.common.PMLogger;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
/* loaded from: classes3.dex */
public class HttpWorker {
    private static String TAG = "HttpWorker";
    private boolean mIsCancelled = false;

    /* loaded from: classes3.dex */
    public interface HttpRedirectListener {
        boolean overrideRedirection();
    }

    private void setAdHeaders(HttpRequest httpRequest, HttpURLConnection httpURLConnection) throws IOException {
        if (httpRequest != null && httpURLConnection != null) {
            httpURLConnection.setDoOutput(true);
            if (httpRequest.mContentTypeHeader != null) {
                httpURLConnection.setRequestProperty("Content-Type", httpRequest.mContentTypeHeader);
            }
            if (httpRequest.mContentLength != null) {
                httpURLConnection.setRequestProperty("Content-Length", httpRequest.mContentLength);
            }
            if (httpRequest.mContentMd5 != null) {
                httpURLConnection.setRequestProperty("Content-MD5", httpRequest.mContentMd5);
            }
            if (httpRequest.mHost != null) {
                httpURLConnection.setRequestProperty("Host", httpRequest.mHost);
            }
            if (httpRequest.mContentLanguage != null) {
                httpURLConnection.setRequestProperty("Content-Language", httpRequest.mContentLanguage);
            }
            if (httpRequest.mAcceptLangauge != null) {
                httpURLConnection.setRequestProperty("Accept-Language", httpRequest.mAcceptLangauge);
            }
            if (httpRequest.getUserAgent() != null) {
                httpURLConnection.setRequestProperty("User-Agent", httpRequest.getUserAgent());
            }
            if (httpRequest.getRLNClientIPAddress() != null) {
                httpURLConnection.setRequestProperty("RLNClientIpAddr", httpRequest.getRLNClientIPAddress());
            }
            if (httpRequest.mAccept != null) {
                httpURLConnection.setRequestProperty("Accept", httpRequest.mAccept);
            }
            if (httpRequest.mAcceptCharset != null) {
                httpURLConnection.setRequestProperty("Accept-Charset", httpRequest.mAcceptCharset);
            }
            if (httpRequest.mAcceptDateTime != null) {
                httpURLConnection.setRequestProperty("Accept-Datetime", httpRequest.mAcceptDateTime);
            }
            if (httpRequest.mCacheControl != null) {
                httpURLConnection.setRequestProperty("Cache-Control", httpRequest.mCacheControl);
            }
            if (httpRequest.mDate != null) {
                httpURLConnection.setRequestProperty("Date", httpRequest.mDate);
            }
            if (httpRequest.mConnection != null) {
                httpURLConnection.setRequestProperty("Connection", httpRequest.mConnection);
            }
            switch (httpRequest.getContentType()) {
                case URL_ENCODED:
                    httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                    return;
                case JSON:
                    httpURLConnection.setRequestProperty("Content-Type", "application/json");
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x036f: MOVE  (r5 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:204:0x036e */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0294 A[Catch: all -> 0x036d, Exception -> 0x0392, IOException -> 0x03b2, SocketTimeoutException -> 0x03c8, TRY_LEAVE, TryCatch #10 {all -> 0x036d, blocks: (B:160:0x02ff, B:86:0x01ee, B:129:0x028e, B:131:0x0294, B:147:0x02c0), top: B:258:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0308 A[Catch: IOException -> 0x039a, TryCatch #16 {IOException -> 0x039a, blocks: (B:162:0x0303, B:164:0x0308, B:166:0x030d, B:168:0x0312), top: B:263:0x0303 }] */
    /* JADX WARN: Removed duplicated region for block: B:166:0x030d A[Catch: IOException -> 0x039a, TryCatch #16 {IOException -> 0x039a, blocks: (B:162:0x0303, B:164:0x0308, B:166:0x030d, B:168:0x0312), top: B:263:0x0303 }] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0312 A[Catch: IOException -> 0x039a, TRY_LEAVE, TryCatch #16 {IOException -> 0x039a, blocks: (B:162:0x0303, B:164:0x0308, B:166:0x030d, B:168:0x0312), top: B:263:0x0303 }] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0329 A[Catch: IOException -> 0x0376, TryCatch #6 {IOException -> 0x0376, blocks: (B:174:0x0324, B:176:0x0329, B:178:0x032e, B:180:0x0333), top: B:256:0x0324 }] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x032e A[Catch: IOException -> 0x0376, TryCatch #6 {IOException -> 0x0376, blocks: (B:174:0x0324, B:176:0x0329, B:178:0x032e, B:180:0x0333), top: B:256:0x0324 }] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0333 A[Catch: IOException -> 0x0376, TRY_LEAVE, TryCatch #6 {IOException -> 0x0376, blocks: (B:174:0x0324, B:176:0x0329, B:178:0x032e, B:180:0x0333), top: B:256:0x0324 }] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0344 A[Catch: IOException -> 0x0352, TryCatch #22 {IOException -> 0x0352, blocks: (B:185:0x033f, B:187:0x0344, B:189:0x0349, B:191:0x034e), top: B:271:0x033f }] */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0349 A[Catch: IOException -> 0x0352, TryCatch #22 {IOException -> 0x0352, blocks: (B:185:0x033f, B:187:0x0344, B:189:0x0349, B:191:0x034e), top: B:271:0x033f }] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x034e A[Catch: IOException -> 0x0352, TRY_LEAVE, TryCatch #22 {IOException -> 0x0352, blocks: (B:185:0x033f, B:187:0x0344, B:189:0x0349, B:191:0x034e), top: B:271:0x033f }] */
    /* JADX WARN: Removed duplicated region for block: B:254:0x01f2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0324 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0303 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:271:0x033f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01f7 A[Catch: IOException -> 0x03b5, TryCatch #4 {IOException -> 0x03b5, blocks: (B:88:0x01f2, B:90:0x01f7, B:92:0x01fc, B:94:0x0201), top: B:254:0x01f2 }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01fc A[Catch: IOException -> 0x03b5, TryCatch #4 {IOException -> 0x03b5, blocks: (B:88:0x01f2, B:90:0x01f7, B:92:0x01fc, B:94:0x0201), top: B:254:0x01f2 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0201 A[Catch: IOException -> 0x03b5, TRY_LEAVE, TryCatch #4 {IOException -> 0x03b5, blocks: (B:88:0x01f2, B:90:0x01f7, B:92:0x01fc, B:94:0x0201), top: B:254:0x01f2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public HttpResponse execute(HttpRequest httpRequest, HttpRedirectListener httpRedirectListener) {
        BufferedReader bufferedReader;
        InputStream inputStream;
        InputStreamReader inputStreamReader;
        HttpURLConnection httpURLConnection;
        InputStream inputStream2;
        InputStreamReader inputStreamReader2;
        InputStream inputStream3;
        URL url;
        String str;
        boolean z = false;
        HttpURLConnection httpURLConnection2 = null;
        r4 = null;
        r4 = null;
        r4 = null;
        r4 = null;
        r4 = null;
        r4 = null;
        r4 = null;
        r4 = null;
        BufferedReader bufferedReader2 = null;
        httpURLConnection2 = null;
        InputStreamReader inputStreamReader3 = null;
        InputStream inputStream4 = null;
        BufferedReader bufferedReader3 = null;
        HttpURLConnection httpURLConnection3 = null;
        HttpResponse httpResponse = new HttpResponse();
        try {
            try {
                httpResponse.setHttpRequest(httpRequest);
                if (httpRequest == null || httpRequest.getRequestUrl() == null) {
                    httpResponse.errorType = CommonConstants.PubError.REQUEST_ERROR;
                    if (0 != 0) {
                        try {
                            inputStream4.close();
                        } catch (IOException e) {
                        }
                    }
                    if (0 != 0) {
                        inputStreamReader3.close();
                    }
                    if (0 != 0) {
                        bufferedReader3.close();
                    }
                    if (0 != 0) {
                        httpURLConnection3.disconnect();
                    }
                    return httpResponse;
                }
                String requestMethod = httpRequest.getRequestMethod();
                if (TextUtils.isEmpty(requestMethod)) {
                    httpResponse.errorType = CommonConstants.PubError.REQUEST_ERROR;
                    if (0 != 0) {
                        try {
                            inputStream4.close();
                        } catch (IOException e2) {
                        }
                    }
                    if (0 != 0) {
                        inputStreamReader3.close();
                    }
                    if (0 != 0) {
                        bufferedReader3.close();
                    }
                    if (0 != 0) {
                        httpURLConnection3.disconnect();
                    }
                    return httpResponse;
                }
                if (!requestMethod.equalsIgnoreCase("GET") || httpRequest.getPostData() == null) {
                    URL url2 = new URL(httpRequest.getRequestUrl());
                    PMLogger.logEvent(TAG + ": Http request  = " + httpRequest.getRequestUrl(), PMLogger.LogLevel.Debug);
                    url = url2;
                } else {
                    StringBuffer stringBuffer = new StringBuffer(httpRequest.getRequestUrl());
                    if (!stringBuffer.toString().endsWith("?")) {
                        stringBuffer.append("?");
                    }
                    stringBuffer.append(httpRequest.getPostData());
                    URL url3 = new URL(stringBuffer.toString());
                    PMLogger.logEvent(TAG + ": Http GET request  = " + stringBuffer.toString(), PMLogger.LogLevel.Debug);
                    url = url3;
                }
                httpURLConnection = (HttpURLConnection) url.openConnection();
                try {
                    if (httpURLConnection != null) {
                        try {
                            setAdHeaders(httpRequest, httpURLConnection);
                            HttpURLConnection.setFollowRedirects(false);
                            httpURLConnection.setInstanceFollowRedirects(false);
                            httpURLConnection.setRequestProperty("User-Agent", httpRequest.getUserAgent());
                            httpURLConnection.setRequestProperty("Accept", "text/plain,text/html,application/xhtml+xml,application/xml;*/*");
                            httpURLConnection.setConnectTimeout(5000);
                            if (requestMethod.equalsIgnoreCase("POST") && httpRequest.getPostData() != null) {
                                String postData = httpRequest.getPostData();
                                httpURLConnection.setFixedLengthStreamingMode(postData.toString().getBytes().length);
                                DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                                if (dataOutputStream != null) {
                                    dataOutputStream.writeBytes(postData.toString());
                                    dataOutputStream.flush();
                                    dataOutputStream.close();
                                    PMLogger.logEvent(TAG + ": Http request body = " + postData.toString(), PMLogger.LogLevel.Debug);
                                }
                            }
                            int responseCode = httpURLConnection.getResponseCode();
                            if (responseCode != 200) {
                                if (responseCode == 302 || responseCode == 301 || responseCode == 303) {
                                    z = true;
                                }
                                str = httpURLConnection.getHeaderField("Location");
                            } else {
                                str = null;
                            }
                            if (!url.getHost().equals(httpURLConnection.getURL().getHost())) {
                                z = true;
                                str = httpURLConnection.getURL().toString();
                            }
                            if (z) {
                                if (httpRedirectListener != null && httpRedirectListener.overrideRedirection()) {
                                    httpResponse.errorCode = responseCode;
                                    if (isCancelled()) {
                                        httpResponse.errorType = CommonConstants.PubError.REQUEST_CANCLE;
                                    } else {
                                        httpResponse.errorType = CommonConstants.PubError.REDIRECT_ERROR;
                                    }
                                    if (httpResponse != null) {
                                        PMLogger.logEvent(TAG + ": Http redirect response  = " + httpResponse.getResponseData(), PMLogger.LogLevel.Debug);
                                    }
                                    if (0 != 0) {
                                        try {
                                            inputStream4.close();
                                        } catch (IOException e3) {
                                        }
                                    }
                                    if (0 != 0) {
                                        inputStreamReader3.close();
                                    }
                                    if (0 != 0) {
                                        bufferedReader3.close();
                                    }
                                    if (httpURLConnection != null) {
                                        httpURLConnection.disconnect();
                                    }
                                    return httpResponse;
                                }
                                httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                                httpURLConnection.setRequestProperty("User-Agent", httpRequest.getUserAgent());
                                httpURLConnection.setRequestProperty("Accept", httpRequest.mAccept);
                                responseCode = httpURLConnection.getResponseCode();
                            }
                            if (responseCode == 200) {
                                String headerField = httpURLConnection.getHeaderField("Content-Type");
                                httpResponse.setContentType(headerField.contains(AdType.STATIC_NATIVE) ? CommonConstants.CONTENT_TYPE.JSON : headerField.contains("xml") ? CommonConstants.CONTENT_TYPE.XML : CommonConstants.CONTENT_TYPE.INVALID);
                                inputStream = httpURLConnection.getInputStream();
                                try {
                                    if (inputStream == null) {
                                        httpResponse.errorType = CommonConstants.PubError.CONNECTION_ERROR;
                                        if (inputStream != null) {
                                            try {
                                                inputStream.close();
                                            } catch (IOException e4) {
                                            }
                                        }
                                        if (0 != 0) {
                                            inputStreamReader3.close();
                                        }
                                        if (0 != 0) {
                                            bufferedReader3.close();
                                        }
                                        if (httpURLConnection != null) {
                                            httpURLConnection.disconnect();
                                        }
                                        return httpResponse;
                                    }
                                    inputStreamReader = new InputStreamReader(inputStream);
                                    try {
                                        bufferedReader = new BufferedReader(inputStreamReader);
                                        while (true) {
                                            try {
                                                String readLine = bufferedReader.readLine();
                                                if (readLine == null) {
                                                    break;
                                                }
                                                httpResponse.setResponse(readLine);
                                            } catch (SocketTimeoutException e5) {
                                                bufferedReader2 = bufferedReader;
                                                inputStream2 = inputStream;
                                                inputStreamReader2 = inputStreamReader;
                                                httpResponse.errorType = CommonConstants.PubError.TIMEOUT_ERROR;
                                                if (inputStream2 != null) {
                                                }
                                                if (inputStreamReader2 != null) {
                                                }
                                                if (bufferedReader2 != null) {
                                                }
                                                if (httpURLConnection != null) {
                                                }
                                                return httpResponse;
                                            } catch (IOException e6) {
                                                bufferedReader2 = bufferedReader;
                                                inputStream2 = inputStream;
                                                inputStreamReader2 = inputStreamReader;
                                                httpResponse.errorType = CommonConstants.PubError.CONNECTION_ERROR;
                                                if (inputStream2 != null) {
                                                }
                                                if (inputStreamReader2 != null) {
                                                }
                                                if (bufferedReader2 != null) {
                                                }
                                                if (httpURLConnection != null) {
                                                }
                                                return httpResponse;
                                            } catch (Exception e7) {
                                                httpURLConnection2 = httpURLConnection;
                                                e = e7;
                                                try {
                                                    e.printStackTrace();
                                                    httpResponse.errorType = -1;
                                                    if (inputStream != null) {
                                                    }
                                                    if (inputStreamReader != null) {
                                                    }
                                                    if (bufferedReader != null) {
                                                    }
                                                    if (httpURLConnection2 != null) {
                                                    }
                                                    return httpResponse;
                                                } catch (Throwable th) {
                                                    th = th;
                                                    if (inputStream != null) {
                                                        try {
                                                            inputStream.close();
                                                        } catch (IOException e8) {
                                                            throw th;
                                                        }
                                                    }
                                                    if (inputStreamReader != null) {
                                                        inputStreamReader.close();
                                                    }
                                                    if (bufferedReader != null) {
                                                        bufferedReader.close();
                                                    }
                                                    if (httpURLConnection2 != null) {
                                                        httpURLConnection2.disconnect();
                                                    }
                                                    throw th;
                                                }
                                            } catch (Throwable th2) {
                                                httpURLConnection2 = httpURLConnection;
                                                th = th2;
                                                if (inputStream != null) {
                                                }
                                                if (inputStreamReader != null) {
                                                }
                                                if (bufferedReader != null) {
                                                }
                                                if (httpURLConnection2 != null) {
                                                }
                                                throw th;
                                            }
                                        }
                                        httpResponse.errorType = 0;
                                        bufferedReader2 = bufferedReader;
                                        inputStream2 = inputStream;
                                        inputStreamReader2 = inputStreamReader;
                                        if (!isCancelled()) {
                                            httpResponse.errorType = CommonConstants.PubError.REQUEST_CANCLE;
                                            if (inputStream2 != null) {
                                                try {
                                                    inputStream2.close();
                                                } catch (IOException e9) {
                                                }
                                            }
                                            if (inputStreamReader2 != null) {
                                                inputStreamReader2.close();
                                            }
                                            if (bufferedReader2 != null) {
                                                bufferedReader2.close();
                                            }
                                            if (httpURLConnection != null) {
                                                httpURLConnection.disconnect();
                                            }
                                            return httpResponse;
                                        }
                                        if (httpResponse != null) {
                                            PMLogger.logEvent(TAG + ": Http response  = " + httpResponse.getResponseData(), PMLogger.LogLevel.Debug);
                                        }
                                        if (inputStream2 != null) {
                                            try {
                                                inputStream2.close();
                                            } catch (IOException e10) {
                                            }
                                        }
                                        if (inputStreamReader2 != null) {
                                            inputStreamReader2.close();
                                        }
                                        if (bufferedReader2 != null) {
                                            bufferedReader2.close();
                                        }
                                        if (httpURLConnection != null) {
                                            httpURLConnection.disconnect();
                                        }
                                        return httpResponse;
                                    } catch (SocketTimeoutException e11) {
                                        inputStream2 = inputStream;
                                        inputStreamReader2 = inputStreamReader;
                                    } catch (IOException e12) {
                                        inputStream2 = inputStream;
                                        inputStreamReader2 = inputStreamReader;
                                    } catch (Exception e13) {
                                        bufferedReader = null;
                                        httpURLConnection2 = httpURLConnection;
                                        e = e13;
                                    } catch (Throwable th3) {
                                        bufferedReader = null;
                                        httpURLConnection2 = httpURLConnection;
                                        th = th3;
                                    }
                                } catch (SocketTimeoutException e14) {
                                    inputStream2 = inputStream;
                                    inputStreamReader2 = null;
                                } catch (IOException e15) {
                                    inputStream2 = inputStream;
                                    inputStreamReader2 = null;
                                } catch (Exception e16) {
                                    inputStreamReader = null;
                                    HttpURLConnection httpURLConnection4 = httpURLConnection;
                                    e = e16;
                                    bufferedReader = null;
                                    httpURLConnection2 = httpURLConnection4;
                                } catch (Throwable th4) {
                                    inputStreamReader = null;
                                    HttpURLConnection httpURLConnection5 = httpURLConnection;
                                    th = th4;
                                    bufferedReader = null;
                                    httpURLConnection2 = httpURLConnection5;
                                }
                            } else {
                                httpResponse.errorType = CommonConstants.PubError.SERVER_ERROR;
                                if (httpURLConnection != null) {
                                    httpResponse.errorCode = httpURLConnection.getResponseCode();
                                }
                            }
                        } catch (SocketTimeoutException e17) {
                            inputStream2 = null;
                            inputStreamReader2 = null;
                        } catch (IOException e18) {
                            inputStream2 = null;
                            inputStreamReader2 = null;
                        } catch (Exception e19) {
                            inputStream = null;
                            inputStreamReader = null;
                            httpURLConnection2 = httpURLConnection;
                            e = e19;
                            bufferedReader = null;
                        } catch (Throwable th5) {
                            inputStream = null;
                            inputStreamReader = null;
                            httpURLConnection2 = httpURLConnection;
                            th = th5;
                            bufferedReader = null;
                        }
                    }
                    if (!isCancelled()) {
                    }
                } catch (SocketTimeoutException e20) {
                    httpResponse.errorType = CommonConstants.PubError.TIMEOUT_ERROR;
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (IOException e21) {
                            return httpResponse;
                        }
                    }
                    if (inputStreamReader2 != null) {
                        inputStreamReader2.close();
                    }
                    if (bufferedReader2 != null) {
                        bufferedReader2.close();
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return httpResponse;
                } catch (IOException e22) {
                    httpResponse.errorType = CommonConstants.PubError.CONNECTION_ERROR;
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (IOException e23) {
                            return httpResponse;
                        }
                    }
                    if (inputStreamReader2 != null) {
                        inputStreamReader2.close();
                    }
                    if (bufferedReader2 != null) {
                        bufferedReader2.close();
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return httpResponse;
                } catch (Exception e24) {
                    inputStreamReader = inputStreamReader2;
                    inputStream = inputStream2;
                    bufferedReader = bufferedReader2;
                    httpURLConnection2 = httpURLConnection;
                    e = e24;
                    e.printStackTrace();
                    httpResponse.errorType = -1;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e25) {
                            return httpResponse;
                        }
                    }
                    if (inputStreamReader != null) {
                        inputStreamReader.close();
                    }
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    return httpResponse;
                }
                inputStream2 = null;
                inputStreamReader2 = null;
            } catch (Throwable th6) {
                inputStreamReader = null;
                inputStream = inputStream3;
                bufferedReader = null;
                httpURLConnection2 = null;
                th = th6;
            }
        } catch (SocketTimeoutException e26) {
            httpURLConnection = null;
            inputStream2 = null;
            inputStreamReader2 = null;
        } catch (IOException e27) {
            httpURLConnection = null;
            inputStream2 = null;
            inputStreamReader2 = null;
        } catch (Exception e28) {
            e = e28;
            bufferedReader = null;
            inputStream = null;
            inputStreamReader = null;
        } catch (Throwable th7) {
            th = th7;
            bufferedReader = null;
            inputStream = null;
            inputStreamReader = null;
        }
    }

    public void cancelRequest() {
        this.mIsCancelled = true;
    }

    private boolean isCancelled() {
        return this.mIsCancelled;
    }
}
