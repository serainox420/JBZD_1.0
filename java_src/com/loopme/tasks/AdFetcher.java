package com.loopme.tasks;

import com.applovin.sdk.AppLovinErrorCodes;
import com.loopme.common.AdParams;
import com.loopme.common.Logging;
import com.loopme.common.LoopMeError;
import com.loopme.common.ResponseParser;
import com.loopme.common.Utils;
import com.loopme.debugging.ErrorLog;
import com.loopme.debugging.ErrorType;
import java.io.BufferedInputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
/* loaded from: classes2.dex */
public class AdFetcher implements Runnable {
    private static final String AGENT_PROPERTY = "http.agent";
    private static final String INVALID_APPKEY_MESS = "Missing or invalid app key";
    private static final String PAGE_NOT_FOUND = "Page not found";
    private static final String USER_AGENT = "User-Agent";
    private int mFormat;
    private Listener mListener;
    private LoopMeError mLoopMeError;
    private final String mRequestUrl;
    private static final String LOG_TAG = AdFetcher.class.getSimpleName();
    static int TIMEOUT = 20000;

    /* loaded from: classes2.dex */
    public interface Listener {
        void onComplete(AdParams adParams, LoopMeError loopMeError);
    }

    public AdFetcher(String str, Listener listener, int i) {
        this.mRequestUrl = str;
        this.mListener = listener;
        this.mFormat = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        String response = getResponse(this.mRequestUrl);
        if (response == null) {
            complete(null, this.mLoopMeError);
            return;
        }
        AdParams adParams = new ResponseParser(new ResponseParser.Listener() { // from class: com.loopme.tasks.AdFetcher.1
            @Override // com.loopme.common.ResponseParser.Listener
            public void onParseError(LoopMeError loopMeError) {
                AdFetcher.this.complete(null, loopMeError);
            }
        }, this.mFormat).getAdParams(response);
        if (adParams != null) {
            complete(adParams, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void complete(AdParams adParams, LoopMeError loopMeError) {
        if (this.mListener != null) {
            this.mListener.onComplete(adParams, loopMeError);
        }
    }

    /* JADX WARN: Not initialized variable reg: 0, insn: 0x00e3: MOVE  (r2 I:??[OBJECT, ARRAY]) = (r0 I:??[OBJECT, ARRAY]), block:B:39:0x00e3 */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String getResponse(String str) {
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2;
        HttpURLConnection httpURLConnection3;
        String str2;
        int responseCode;
        String str3 = null;
        try {
            try {
                httpURLConnection2 = (HttpURLConnection) new URL(str).openConnection();
                try {
                    httpURLConnection2.setRequestProperty("User-Agent", System.getProperty(AGENT_PROPERTY));
                    httpURLConnection2.setReadTimeout(TIMEOUT);
                    httpURLConnection2.setConnectTimeout(TIMEOUT);
                    Logging.out(LOG_TAG, (this.mFormat == 1001 ? "interstitial" : "banner") + " loads ad with URL: " + str);
                    responseCode = httpURLConnection2.getResponseCode();
                    Logging.out(LOG_TAG, "status code: " + responseCode);
                    handleStatusCode(responseCode);
                } catch (SocketTimeoutException e) {
                    this.mLoopMeError = new LoopMeError("Request timeout");
                    ErrorLog.post("timeout[ad_request]", ErrorType.SERVER);
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                        str2 = null;
                        return str2;
                    }
                    str2 = null;
                    return str2;
                } catch (Exception e2) {
                    httpURLConnection = httpURLConnection2;
                    e = e2;
                    try {
                        e.printStackTrace();
                        this.mLoopMeError = new LoopMeError("Error during establish connection");
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                            str2 = null;
                            return str2;
                        }
                        str2 = null;
                        return str2;
                    } catch (Throwable th) {
                        th = th;
                        if (httpURLConnection != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                httpURLConnection = httpURLConnection3;
                th = th2;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (SocketTimeoutException e3) {
            httpURLConnection2 = null;
        } catch (Exception e4) {
            e = e4;
            httpURLConnection = null;
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection = null;
            if (httpURLConnection != null) {
            }
            throw th;
        }
        if (responseCode == 404) {
            if (Utils.getStringFromStream(httpURLConnection2.getErrorStream()).contains(INVALID_APPKEY_MESS)) {
                this.mLoopMeError = new LoopMeError(INVALID_APPKEY_MESS);
            } else {
                this.mLoopMeError = new LoopMeError(PAGE_NOT_FOUND);
            }
            if (httpURLConnection2 == null) {
                return null;
            }
            httpURLConnection2.disconnect();
            return null;
        }
        if (responseCode == 200) {
            str3 = Utils.getStringFromStream(new BufferedInputStream(httpURLConnection2.getInputStream()));
        }
        if (httpURLConnection2 != null) {
            httpURLConnection2.disconnect();
            str2 = str3;
        } else {
            str2 = str3;
        }
        return str2;
    }

    private void handleStatusCode(int i) {
        switch (i) {
            case 200:
                return;
            case AppLovinErrorCodes.NO_FILL /* 204 */:
                this.mLoopMeError = new LoopMeError("No ads found");
                return;
            default:
                this.mLoopMeError = new LoopMeError("Server status code: " + i);
                ErrorLog.post("Server status code: " + i, ErrorType.SERVER);
                return;
        }
    }
}
