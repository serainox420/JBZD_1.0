package com.inmobi.commons.analytics.iat.impl.net;

import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.appevents.AppEventsConstants;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.analytics.iat.impl.Goal;
import com.inmobi.commons.analytics.iat.impl.config.AdTrackerInitializer;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UID;
import java.io.IOException;
import java.util.LinkedList;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class AdTrackerRequestResponseBuilder {

    /* renamed from: a  reason: collision with root package name */
    private static String f3754a = null;
    private static long b = 0;

    protected static String formHttpRequest(String str, String str2, int i, boolean z, String str3) {
        String str4;
        LinkedList linkedList = new LinkedList();
        String preferences = FileOperations.getPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.REFERRER);
        if (str != null && !str.trim().equals("")) {
            linkedList.add(new BasicNameValuePair("mk-siteid", str));
        }
        Map<String, String> mapForEncryption = UID.getInstance().getMapForEncryption(AdTrackerInitializer.getConfigParams().getDeviceIdMaskMap());
        if (UID.getInstance().isLimitAdTrackingEnabled()) {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.KEY_LIMIT_ADTRACKING, "1"));
        } else {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.KEY_LIMIT_ADTRACKING, AppEventsConstants.EVENT_PARAM_VALUE_NO));
        }
        linkedList.add(new BasicNameValuePair(AdTrackerConstants.UIDMAP, mapForEncryption.get(AdTrackerConstants.UIDMAP)));
        linkedList.add(new BasicNameValuePair(AdTrackerConstants.UIDKEY, mapForEncryption.get(AdTrackerConstants.UIDKEY)));
        linkedList.add(new BasicNameValuePair(AdTrackerConstants.UKEYVER, mapForEncryption.get(AdTrackerConstants.UKEYVER)));
        if (str2 != null && !str2.trim().equals("")) {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.GOALNAME, str2));
        }
        if (z) {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.LATE_PING, "1"));
        } else {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.LATE_PING, AppEventsConstants.EVENT_PARAM_VALUE_NO));
        }
        linkedList.add(new BasicNameValuePair("src", AdTrackerConstants.ANDROID));
        if (i > 0) {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.GOALCOUNT, Integer.toString(i)));
        }
        String str5 = "pr-SAND-" + InternalSDKUtil.getInMobiInternalVersion(InternalSDKUtil.INMOBI_SDK_RELEASE_VERSION) + "-" + InternalSDKUtil.INMOBI_SDK_RELEASE_DATE;
        linkedList.add(new BasicNameValuePair(AdTrackerConstants.SDKVER, str5));
        linkedList.add(new BasicNameValuePair(AdTrackerConstants.SDKREL_VER, str5));
        linkedList.add(new BasicNameValuePair(AdTrackerConstants.OS_VERSION, String.valueOf(Build.VERSION.SDK_INT)));
        String preferences2 = FileOperations.getPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_REFERRER_FROM_LOGCAT);
        if (preferences2 == null) {
            preferences2 = AppEventsConstants.EVENT_PARAM_VALUE_NO;
        }
        linkedList.add(new BasicNameValuePair(AdTrackerConstants.KEY_REFERRER_FROM_LOGCAT, preferences2));
        try {
            str4 = InternalSDKUtil.getContext().getPackageManager().getPackageInfo(InternalSDKUtil.getContext().getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Cant get appversion", e);
            str4 = null;
        }
        if (str4 != null && !str4.trim().equals("")) {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.APPVER, str4));
        }
        if (str3 != null && !str3.trim().equals("")) {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.VALIDIDS, str3));
        }
        if (preferences != null) {
            int intPreferences = FileOperations.getIntPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.REFERRER_FROM_SDK);
            long longPreferences = FileOperations.getLongPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_T1);
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.REFERRER_FROM_SDK, Integer.toString(intPreferences)));
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.REFERRER_DELAY, Long.toString(FileOperations.getLongPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_T2) - longPreferences)));
        }
        if (1 == AdTrackerNetworkInterface.isUnstableNetwork()) {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.KEY_UNSTABLE_NETWORK, Integer.toString(AdTrackerNetworkInterface.isUnstableNetwork())));
        }
        linkedList.add(new BasicNameValuePair("ts", Long.toString(System.currentTimeMillis())));
        return URLEncodedUtils.format(linkedList, AudienceNetworkActivity.WEBVIEW_ENCODING);
    }

    public static AdTrackerConstants.StatusCode reportGoalOverHttp(String str, Goal goal, String str2) {
        AdTrackerConstants.StatusCode statusCode;
        JSONException e;
        IOException e2;
        ClientProtocolException e3;
        AdTrackerConstants.StatusCode statusCode2 = AdTrackerConstants.StatusCode.APP_ANALYTICS_UPLOAD_FAILURE;
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
        String preferences = FileOperations.getPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.REFERRER);
        String formHttpRequest = formHttpRequest(str, goal.name, goal.count, goal.isDuplicate, str2);
        int connectionTimeout = AdTrackerInitializer.getConfigParams().getConnectionTimeout();
        String str3 = AdTrackerNetworkInterface.a() + formHttpRequest;
        if (preferences != null) {
            str3 = str3 + "&referrer=" + preferences;
        }
        Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, str3);
        Handler c = AdTrackerNetworkInterface.c();
        Message obtain = Message.obtain();
        obtain.what = 10;
        obtain.obj = goal;
        HttpGet httpGet = new HttpGet(str3);
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, connectionTimeout);
        HttpConnectionParams.setSoTimeout(basicHttpParams, connectionTimeout);
        defaultHttpClient.setParams(basicHttpParams);
        try {
            try {
                b = System.currentTimeMillis();
                HttpResponse execute = defaultHttpClient.execute(httpGet);
                int statusCode3 = execute.getStatusLine().getStatusCode();
                if (200 == statusCode3) {
                    String entityUtils = EntityUtils.toString(execute.getEntity());
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Response: " + entityUtils);
                    JSONObject jSONObject = new JSONObject(entityUtils);
                    String string = jSONObject.getString(AdTrackerConstants.ERRORMSG);
                    int i = jSONObject.getInt(AdTrackerConstants.ERRORCODE);
                    if (6000 == i) {
                        AdTrackerConstants.StatusCode statusCode4 = AdTrackerConstants.StatusCode.APP_ANALYTICS_UPLOAD_SUCCESS;
                        obtain.what = 8;
                        obtain.arg2 = (int) (System.currentTimeMillis() - b);
                        statusCode = statusCode4;
                    } else {
                        obtain.arg2 = i;
                        statusCode = statusCode2;
                    }
                    if (6001 == i) {
                        try {
                            Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Error uploading ping " + string + "\nReloading webview");
                            FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.VALIDIDS, (String) null);
                            obtain.arg2 = i;
                        } catch (ClientProtocolException e4) {
                            e3 = e4;
                            obtain.arg2 = AdTrackerConstants.EXCEPTION;
                            e3.printStackTrace();
                            return statusCode;
                        } catch (IOException e5) {
                            e2 = e5;
                            obtain.arg2 = AdTrackerConstants.EXCEPTION;
                            e2.printStackTrace();
                            return statusCode;
                        } catch (JSONException e6) {
                            e = e6;
                            obtain.arg2 = AdTrackerConstants.EXCEPTION;
                            e.printStackTrace();
                            return statusCode;
                        }
                    }
                } else {
                    obtain.arg2 = statusCode3;
                    statusCode = statusCode2;
                }
            } finally {
                Bundle bundle = new Bundle();
                bundle.putString("appId", str);
                obtain.setData(bundle);
                c.sendMessage(obtain);
            }
        } catch (ClientProtocolException e7) {
            statusCode = statusCode2;
            e3 = e7;
        } catch (IOException e8) {
            statusCode = statusCode2;
            e2 = e8;
        } catch (JSONException e9) {
            statusCode = statusCode2;
            e = e9;
        }
        return statusCode;
    }

    public static boolean serverReachable(String str) {
        try {
        } catch (Exception e) {
            Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Server not reachable..Logging events");
        }
        if (new DefaultHttpClient().execute(new HttpGet(str)).getStatusLine().getStatusCode() == 200) {
            return true;
        }
        return false;
    }

    public static void saveWebviewRequestParam(String str, Goal goal) {
        f3754a = formHttpRequest(str, goal.name, goal.count, goal.isDuplicate, null);
    }

    public static String getWebViewRequestParam() {
        return f3754a;
    }
}
