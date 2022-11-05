package com.amazon.device.ads;

import com.amazon.device.ads.WebRequest;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class HttpURLConnectionWebRequest extends WebRequest {
    private static final String LOGTAG = HttpURLConnectionWebRequest.class.getSimpleName();
    private HttpURLConnection connection;

    @Override // com.amazon.device.ads.WebRequest
    protected WebRequest.WebResponse doHttpNetworkCall(URL url) throws WebRequest.WebRequestException {
        if (this.connection != null) {
            closeConnection();
        }
        try {
            this.connection = openConnection(url);
            setupRequestProperties(this.connection);
            try {
                this.connection.connect();
                return prepareResponse(this.connection);
            } catch (SocketTimeoutException e) {
                getLogger().e("Socket timed out while connecting to URL: %s", e.getMessage());
                throw new WebRequest.WebRequestException(WebRequest.WebRequestStatus.NETWORK_TIMEOUT, "Socket timed out while connecting to URL", e);
            } catch (Exception e2) {
                getLogger().e("Problem while connecting to URL: %s", e2.getMessage());
                throw new WebRequest.WebRequestException(WebRequest.WebRequestStatus.NETWORK_FAILURE, "Probem while connecting to URL", e2);
            }
        } catch (IOException e3) {
            getLogger().e("Problem while opening the URL connection: %s", e3.getMessage());
            throw new WebRequest.WebRequestException(WebRequest.WebRequestStatus.NETWORK_FAILURE, "Problem while opening the URL connection", e3);
        }
    }

    protected HttpURLConnection openConnection(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    @Override // com.amazon.device.ads.WebRequest
    protected void closeConnection() {
        if (this.connection != null) {
            this.connection.disconnect();
            this.connection = null;
        }
    }

    protected void setupRequestProperties(HttpURLConnection httpURLConnection) throws WebRequest.WebRequestException {
        try {
            httpURLConnection.setRequestMethod(getHttpMethod().name());
            for (Map.Entry<String, String> entry : this.headers.entrySet()) {
                if (entry.getValue() != null && !entry.getValue().equals("")) {
                    httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
                }
            }
            httpURLConnection.setConnectTimeout(getTimeout());
            httpURLConnection.setReadTimeout(getTimeout());
            logUrl(httpURLConnection.getURL().toString());
            switch (getHttpMethod()) {
                case GET:
                    httpURLConnection.setDoOutput(false);
                    return;
                case POST:
                    httpURLConnection.setDoOutput(true);
                    writePostBody(httpURLConnection);
                    return;
                default:
                    return;
            }
        } catch (ProtocolException e) {
            getLogger().e("Invalid client protocol: %s", e.getMessage());
            throw new WebRequest.WebRequestException(WebRequest.WebRequestStatus.INVALID_CLIENT_PROTOCOL, "Invalid client protocol", e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00e4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.io.OutputStreamWriter] */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void writePostBody(HttpURLConnection httpURLConnection) throws WebRequest.WebRequestException {
        String str;
        StringBuilder sb = new StringBuilder();
        if (this.requestBody != null) {
            sb.append(this.requestBody);
        } else if (this.postParameters != null && !this.postParameters.isEmpty()) {
            for (Map.Entry<String, String> entry : this.postParameters.entrySet()) {
                str = "&";
                sb.append(entry.getKey()).append("=").append(WebUtils.getURLEncodedString(entry.getValue())).append(str);
            }
            sb.deleteCharAt(sb.lastIndexOf("&"));
        }
        ?? r1 = str;
        if (this.logRequestBodyEnabled) {
            r1 = str;
            if (getRequestBody() != null) {
                String replaceAll = !this.logSessionIdEnabled ? getRequestBody().replaceAll(",\\s*\"\\s*sessionId\\s*\"\\s*:\\s*\".*?\"|\\s*\"\\s*sessionId\\s*\"\\s*:\\s*\".*?\"\\s*,*", "") : getRequestBody();
                MobileAdsLogger logger = getLogger();
                logger.d("Request Body: %s", replaceAll);
                r1 = logger;
            }
        }
        try {
            try {
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(httpURLConnection.getOutputStream(), "UTF-8");
                try {
                    outputStreamWriter.write(sb.toString());
                    if (outputStreamWriter != null) {
                        try {
                            outputStreamWriter.close();
                        } catch (IOException e) {
                            getLogger().e("Problem while closing output stream writer for request body: %s", e.getMessage());
                            throw new WebRequest.WebRequestException(WebRequest.WebRequestStatus.NETWORK_FAILURE, "Problem while closing output stream writer for request body", e);
                        }
                    }
                } catch (IOException e2) {
                    e = e2;
                    getLogger().e("Problem while creating output steam for request body: %s", e.getMessage());
                    throw new WebRequest.WebRequestException(WebRequest.WebRequestStatus.NETWORK_FAILURE, "Problem while creating output steam for request body", e);
                }
            } catch (Throwable th) {
                th = th;
                if (r1 != 0) {
                    try {
                        r1.close();
                    } catch (IOException e3) {
                        getLogger().e("Problem while closing output stream writer for request body: %s", e3.getMessage());
                        throw new WebRequest.WebRequestException(WebRequest.WebRequestStatus.NETWORK_FAILURE, "Problem while closing output stream writer for request body", e3);
                    }
                }
                throw th;
            }
        } catch (IOException e4) {
            e = e4;
        } catch (Throwable th2) {
            th = th2;
            r1 = 0;
            if (r1 != 0) {
            }
            throw th;
        }
    }

    protected WebRequest.WebResponse prepareResponse(HttpURLConnection httpURLConnection) throws WebRequest.WebRequestException {
        WebRequest.WebResponse webResponse = new WebRequest.WebResponse();
        try {
            webResponse.setHttpStatusCode(httpURLConnection.getResponseCode());
            webResponse.setHttpStatus(httpURLConnection.getResponseMessage());
            if (webResponse.getHttpStatusCode() == 200) {
                try {
                    webResponse.setInputStream(httpURLConnection.getInputStream());
                } catch (IOException e) {
                    getLogger().e("IOException while reading the input stream from response: %s", e.getMessage());
                    throw new WebRequest.WebRequestException(WebRequest.WebRequestStatus.NETWORK_FAILURE, "IOException while reading the input stream from response", e);
                }
            }
            return webResponse;
        } catch (IOException e2) {
            getLogger().e("IOException while getting the response status code: %s", e2.getMessage());
            throw new WebRequest.WebRequestException(WebRequest.WebRequestStatus.NETWORK_FAILURE, "IOException while getting the response status code", e2);
        } catch (IndexOutOfBoundsException e3) {
            getLogger().e("IndexOutOfBoundsException while getting the response status code: %s", e3.getMessage());
            throw new WebRequest.WebRequestException(WebRequest.WebRequestStatus.MALFORMED_URL, "IndexOutOfBoundsException while getting the response status code", e3);
        } catch (SocketTimeoutException e4) {
            getLogger().e("Socket Timeout while getting the response status code: %s", e4.getMessage());
            throw new WebRequest.WebRequestException(WebRequest.WebRequestStatus.NETWORK_TIMEOUT, "Socket Timeout while getting the response status code", e4);
        }
    }

    @Override // com.amazon.device.ads.WebRequest
    protected String getSubLogTag() {
        return LOGTAG;
    }
}
