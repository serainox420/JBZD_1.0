package com.mdotm.android.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.facebook.appevents.AppEventsConstants;
import com.mdotm.android.model.MdotMAdRequest;
import com.mdotm.android.nativeads.MdotMNativeView;
import com.mdotm.android.utils.MdotMAdvertisingIdClient;
import com.mdotm.android.view.MdotMInterstitial;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class MdotMJsonRequsetBuilder {
    String adID = null;
    boolean gpsLibExists;
    private Context mContext;
    private String ua;

    public MdotMJsonRequsetBuilder(Context context, String str) {
        this.mContext = context;
        this.ua = str;
    }

    public StringBuffer buildRequest(MdotMAdRequest mdotMAdRequest) {
        String[] split = mdotMAdRequest.getAdSize().split(",");
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("id", mdotMAdRequest.getAppKey());
            jSONObject.put("app", jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("idfa", getGAID());
            jSONObject3.put("ext", jSONObject4.toString());
            jSONObject3.put("ua", this.ua);
            jSONObject3.put("language", Locale.getDefault().getLanguage());
            jSONObject3.put(PubMaticConstants.MAKE_PARAM, Build.MANUFACTURER);
            jSONObject3.put(PubMaticConstants.MODEL_PARAM, Build.MODEL);
            jSONObject3.put(PubMaticConstants.OS_PARAM, "Android");
            jSONObject3.put(PubMaticConstants.OSV_PARAM, Build.VERSION.RELEASE);
            jSONObject3.put("dnt", getAte());
            if (isTablet(this.mContext) != null) {
                jSONObject3.put("devicetype", Integer.parseInt(isTablet(this.mContext)));
            }
            jSONObject3.put("connectiontype", getConectionType());
            jSONObject.put("device", jSONObject3);
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject5 = new JSONObject();
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("w", Integer.parseInt(split[0]));
            jSONObject6.put("h", Integer.parseInt(split[1]));
            jSONObject6.put("rewarded", MdotMInterstitial.getRewarded() ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
            jSONObject6.put("native", MdotMNativeView.getNativeAd() ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
            MdotMNativeView.setNativeAd(false);
            jSONObject6.put("test", mdotMAdRequest.isTestMode());
            jSONObject5.put("banner", jSONObject6);
            jSONObject5.put("displaymanager", "mdotm");
            jSONObject5.put("displaymanagerver", MdotMConfiguration.APP_VERSION);
            jSONObject5.put(PhoenixConstants.INTERSTITIAL_FLAG_PARAM, 1);
            jSONArray.put(jSONObject5);
            jSONObject.put("imp", jSONArray);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return new StringBuffer(jSONObject.toString());
    }

    private String getGAID() {
        try {
            this.adID = MdotMUtils.getUtilsInstance().getAdId(this.mContext);
            if (this.adID != null) {
                this.gpsLibExists = true;
                MdotMLogger.i(this, "ad id from gps sdk" + this.adID);
            } else {
                MdotMLogger.i(this, "GPS SDK NOT PRESENT");
                MdotMAdvertisingIdClient.AdInfo advertisingIdInfo = MdotMAdvertisingIdClient.getAdvertisingIdInfo(this.mContext);
                if (advertisingIdInfo != null) {
                    this.adID = advertisingIdInfo.getId();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        MdotMLogger.i(this, "idfa" + this.adID);
        return this.adID;
    }

    private String getAte() {
        boolean isLimitAdTrackingEnabled;
        try {
            if (this.adID == null) {
                return null;
            }
            if (this.gpsLibExists) {
                isLimitAdTrackingEnabled = MdotMUtils.getUtilsInstance().getLAT(this.mContext);
            } else {
                isLimitAdTrackingEnabled = MdotMAdvertisingIdClient.getAdvertisingIdInfo(this.mContext).isLimitAdTrackingEnabled();
            }
            MdotMLogger.d(this, "ataching ate");
            if (isLimitAdTrackingEnabled) {
                return AppEventsConstants.EVENT_PARAM_VALUE_NO;
            }
            return "1";
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String isTablet(Context context) {
        if ((context.getResources().getConfiguration().screenLayout & 15) >= 3) {
            return "2";
        }
        return "1";
    }

    public String getConectionType() {
        TelephonyManager telephonyManager = null;
        ConnectivityManager connectivityManager = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !connectivityManager.getBackgroundDataSetting()) {
            return null;
        }
        int type = activeNetworkInfo.getType();
        int subtype = activeNetworkInfo.getSubtype();
        if (type == 1) {
            return "2";
        }
        if (type != 0 || subtype != 3 || telephonyManager.isNetworkRoaming()) {
            return null;
        }
        return "1";
    }
}
