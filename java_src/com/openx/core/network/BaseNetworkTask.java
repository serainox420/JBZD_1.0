package com.openx.core.network;

import android.os.AsyncTask;
import android.os.Build;
import com.openx.common.utils.logger.OXLog;
import com.openx.core.network.exception.BaseExceptionHolder;
import com.openx.core.network.exception.BaseExceptionProvider;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Locale;
import org.apache.http.HttpResponse;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
/* loaded from: classes3.dex */
public class BaseNetworkTask extends AsyncTask<GetUrlParams, Integer, GetUrlResult> {
    protected static final String ACCEPT_ENCODING_HEADER = "Accept-Encoding";
    protected static final String ACCEPT_HEADER = "Accept";
    protected static final String ACCEPT_HEADER_VALUE = "application/x-www-form-urlencoded,text/plain,text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";
    protected static final String ACCEPT_LANGUAGE_HEADER = "Accept-Language";
    private static final String ENCODING_STR = "utf-8";
    private static final String NEW_LINE = System.getProperty("line.separator");
    protected static final String USER_AGENT_HEADER = "User-Agent";
    private final String TAG = "BaseNetworkTask";
    private HttpURLConnection con = null;
    protected DefaultHttpClient httpClient = null;
    private BaseResponseHandler responseHandler;
    private GetUrlResult result;

    /* loaded from: classes3.dex */
    public static class GetUrlParams {
        HashMap<String, ?> additionalHeader;
        public boolean followRedirect;
        public String name;
        public String queryParams;
        public String url;
        public String userAgent;
    }

    /* loaded from: classes3.dex */
    public static class GetUrlResult extends BaseExceptionHolder {
        public String[] JSRedirectURI;
        public String contentType;
        public String originalUrl;
        public String response;
        public int statusCode;
    }

    public BaseNetworkTask(BaseResponseHandler baseResponseHandler) {
        this.responseHandler = baseResponseHandler;
        if (Build.VERSION.SDK_INT < 8) {
            System.setProperty("http.keepAlive", Consts.False);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public GetUrlResult doInBackground(GetUrlParams... getUrlParamsArr) {
        this.result = new GetUrlResult();
        if (validParams(getUrlParamsArr)) {
            try {
                try {
                    try {
                        try {
                            this.result = sendRequest(getUrlParamsArr[0]);
                            if (this.con != null) {
                                this.con.disconnect();
                                OXLog.debug("BaseNetworkTask", "Request finished. disconneting con");
                            }
                            if (this.httpClient != null) {
                                this.httpClient.getConnectionManager().shutdown();
                                OXLog.debug("BaseNetworkTask", "Request finished. httpclient shutting down");
                            }
                        } catch (IOException e) {
                            this.result.setException(e);
                            if (this.con != null) {
                                this.con.disconnect();
                                OXLog.debug("BaseNetworkTask", "Request finished. disconneting con");
                            }
                            if (this.httpClient != null) {
                                this.httpClient.getConnectionManager().shutdown();
                                OXLog.debug("BaseNetworkTask", "Request finished. httpclient shutting down");
                            }
                        }
                    } catch (Exception e2) {
                        this.result.setException(e2);
                        if (this.con != null) {
                            this.con.disconnect();
                            OXLog.debug("BaseNetworkTask", "Request finished. disconneting con");
                        }
                        if (this.httpClient != null) {
                            this.httpClient.getConnectionManager().shutdown();
                            OXLog.debug("BaseNetworkTask", "Request finished. httpclient shutting down");
                        }
                    }
                } catch (MalformedURLException e3) {
                    this.result.setException(e3);
                    if (this.con != null) {
                        this.con.disconnect();
                        OXLog.debug("BaseNetworkTask", "Request finished. disconneting con");
                    }
                    if (this.httpClient != null) {
                        this.httpClient.getConnectionManager().shutdown();
                        OXLog.debug("BaseNetworkTask", "Request finished. httpclient shutting down");
                    }
                }
            } catch (Throwable th) {
                if (this.con != null) {
                    this.con.disconnect();
                    OXLog.debug("BaseNetworkTask", "Request finished. disconneting con");
                }
                if (this.httpClient != null) {
                    this.httpClient.getConnectionManager().shutdown();
                    OXLog.debug("BaseNetworkTask", "Request finished. httpclient shutting down");
                }
                throw th;
            }
        } else {
            this.result = null;
        }
        if (this.result != null) {
            OXLog.debug("BaseNetworkTask", "NetworkTask's doinbackGround result : " + this.result.response + " exception? : " + this.result.getException());
        }
        return this.result;
    }

    public GetUrlResult sendRequest(GetUrlParams getUrlParams) throws MalformedURLException, IOException, Exception {
        OXLog.debug("BaseNetworkTask", "url: URLCONNECTION: using HttpUrlConnection: " + getUrlParams.url);
        this.result = new GetUrlResult();
        this.con = setHttpURLConnectionProperty(getUrlParams);
        this.result = parseHttpURLResponse(this.con.getResponseCode(), sendDataonHttpURLConnection(this.con), this.con);
        return this.result;
    }

    private BufferedInputStream sendDataonHttpURLConnection(HttpURLConnection httpURLConnection) throws IOException {
        return new BufferedInputStream(httpURLConnection.getInputStream());
    }

    private GetUrlResult parseHttpURLResponse(int i, BufferedInputStream bufferedInputStream, HttpURLConnection httpURLConnection) throws IOException, Exception {
        this.result.statusCode = i;
        this.result = customParser(i, httpURLConnection);
        return this.result;
    }

    private HttpURLConnection setHttpURLConnectionProperty(GetUrlParams getUrlParams) throws MalformedURLException, IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(getUrlParams.url).openConnection();
        OXLog.debug("BaseNetworkTask", "Sending record data on urlconnection: " + getUrlParams.url);
        if (getUrlParams.followRedirect) {
            HttpURLConnection.setFollowRedirects(true);
            httpURLConnection.setInstanceFollowRedirects(true);
        } else {
            httpURLConnection.setInstanceFollowRedirects(false);
        }
        httpURLConnection.setRequestProperty("User-Agent", getUrlParams.userAgent);
        httpURLConnection.setRequestProperty("Accept-Language", Locale.getDefault().toString());
        httpURLConnection.setRequestProperty(ACCEPT_ENCODING_HEADER, "gzip");
        httpURLConnection.setRequestProperty("Accept", ACCEPT_HEADER_VALUE);
        setURLConnectionAdditionalHeaders(httpURLConnection, getUrlParams.additionalHeader);
        httpURLConnection.setReadTimeout(5000);
        httpURLConnection.setConnectTimeout(5000);
        return httpURLConnection;
    }

    public DefaultHttpClient setDefaultHTTPProperty() {
        ClientConnectionManager connectionManager = new DefaultHttpClient().getConnectionManager();
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, 3000);
        HttpConnectionParams.setSoTimeout(basicHttpParams, 3000);
        basicHttpParams.setParameter("http.protocol.cookie-policy", "compatibility");
        return new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, connectionManager.getSchemeRegistry()), basicHttpParams);
    }

    public void doCustomExecuteFailCall(String str) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public GetUrlResult parseHttpResponse(HttpResponse httpResponse) throws UnsupportedEncodingException, IOException, Exception {
        StringBuilder sb = new StringBuilder();
        if (httpResponse != null) {
            int statusCode = httpResponse.getStatusLine().getStatusCode();
            if (statusCode == 200) {
                OXLog.debug("BaseNetworkTask", "Request finished. Result: " + statusCode);
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpResponse.getEntity().getContent(), "utf-8"));
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb.append(readLine + NEW_LINE);
                }
                bufferedReader.close();
            } else if (statusCode != 200) {
                OXLog.debug("BaseNetworkTask", "Request error. in parsing : Result: " + statusCode);
                throw new Exception("AdServer returned HTTP " + httpResponse.getStatusLine().getStatusCode());
            }
            this.result.response = sb.toString();
            return this.result;
        }
        OXLog.debug("BaseNetworkTask", "Response is null");
        throw new Exception("No Response from Ad server. ");
    }

    public GetUrlResult customParser(int i, HttpURLConnection httpURLConnection) {
        return this.result;
    }

    private void setURLConnectionAdditionalHeaders(HttpURLConnection httpURLConnection, HashMap<String, ?> hashMap) {
        if (hashMap != null) {
            for (String str : hashMap.keySet()) {
                httpURLConnection.setRequestProperty(str, (String) hashMap.get(str));
            }
        }
    }

    public boolean validParams(GetUrlParams... getUrlParamsArr) {
        if (getUrlParamsArr == null || getUrlParamsArr.length == 0) {
            this.result.setException(new Exception("Invalid Params"));
            return false;
        }
        return true;
    }

    public GetUrlResult doCustomValidation(GetUrlParams... getUrlParamsArr) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(GetUrlResult getUrlResult) {
        if (getUrlResult != null) {
            OXLog.debug("BaseNetworkTask", "url: NetworkTask's postExecute result : " + getUrlResult.response + " exception? : " + getUrlResult.getException());
        }
        if (this.responseHandler != null) {
            if (getUrlResult != null) {
                if ((getUrlResult instanceof BaseExceptionProvider) && getUrlResult.getException() != null) {
                    ((ResponseHandler) this.responseHandler).processError(getUrlResult.getException().getMessage());
                    return;
                } else if (getUrlResult.response != null && getUrlResult.response.length() < 100) {
                    ((ResponseHandler) this.responseHandler).processError("Invalid VAST Response: less than 100 characters.");
                    return;
                } else {
                    ((ResponseHandler) this.responseHandler).processResponse(getUrlResult);
                    return;
                }
            }
            return;
        }
        OXLog.debug("BaseNetworkTask", "No responsehandler on: may be a tracking event");
    }

    @Override // android.os.AsyncTask
    protected void onCancelled() {
        super.onCancelled();
        if (this.con != null) {
            this.con.disconnect();
            OXLog.debug("BaseNetworkTask", "Request cancelled. disconnecting connection");
        }
        if (this.httpClient != null) {
            this.httpClient.getConnectionManager().shutdown();
            OXLog.debug("BaseNetworkTask", "Request cancelled. httpclient shutting down");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onProgressUpdate(Integer... numArr) {
        super.onProgressUpdate((Object[]) numArr);
    }
}
