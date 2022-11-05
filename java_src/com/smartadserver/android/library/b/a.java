package com.smartadserver.android.library.b;

import com.facebook.appevents.AppEventsConstants;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.mopub.common.AdType;
import com.mopub.mobileads.VastIconXmlManager;
import com.smartadserver.android.library.exception.SASAdTimeoutException;
import com.smartadserver.android.library.exception.SASVASTParsingException;
import com.smartadserver.android.library.g.b;
import com.smartadserver.android.library.g.c;
import com.smartadserver.android.library.model.SASAdElement;
import com.smartadserver.android.library.model.SASNativeParallaxAdElement;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import com.smartadserver.android.library.model.d;
import com.smartadserver.android.library.ui.SASAdView;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: SASAdElementJSONParser.java */
/* loaded from: classes3.dex */
public class a {
    public static SASAdElement a(String str, long j) throws JSONException, SASAdTimeoutException, SASVASTParsingException {
        String h;
        JSONObject jSONObject = new JSONObject(str);
        JSONObject optJSONObject = jSONObject.optJSONObject(AdDatabaseHelper.TABLE_AD);
        JSONArray optJSONArray = jSONObject.optJSONArray("mediationAds");
        if (optJSONObject == null && optJSONArray == null) {
            throw new JSONException("No Smart AdServer Ad or mediation ad in JSON");
        }
        SASAdElement sASAdElement = null;
        if (optJSONObject != null) {
            String optString = optJSONObject.optString(AdType.HTML);
            String optString2 = optJSONObject.optString("scriptUrl");
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("native");
            if ("".equals(optString) && "".equals(optString2) && optJSONObject2 == null) {
                throw new JSONException("Ad does not contain one of the mandatory elements: 'html', 'scriptUrl' or 'native'");
            }
            if (optJSONObject2 != null) {
                sASAdElement = a(optJSONObject2, j);
            } else {
                sASAdElement = new SASAdElement();
            }
            if (!"".equals(optString)) {
                sASAdElement.setBaseUrl(SASAdView.getBaseUrl());
                sASAdElement.setHtmlContents(optString);
            }
            if (!"".equals(optString2)) {
                try {
                    URL url = new URL(optString2);
                    sASAdElement.setScriptUrl(optString2);
                    String[] strArr = new String[1];
                    String a2 = b.a(url, strArr);
                    if (strArr[0] != null) {
                        h = c.h(strArr[0]);
                    } else {
                        h = c.h(optString2);
                    }
                    if (h == null) {
                        throw new JSONException("Cannot get base URL for scriptUrl: " + optString2);
                    }
                    if (a2 == null) {
                        throw new JSONException("Cannot get HTML contents for scriptUrl: " + optString2);
                    }
                    sASAdElement.setBaseUrl(h);
                    sASAdElement.setHtmlContents(a2);
                } catch (MalformedURLException e) {
                    throw new JSONException("Invalid URL for scriptUrl: " + optString2);
                }
            }
            String impressionUrlString = sASAdElement.getImpressionUrlString();
            String optString3 = optJSONObject.optString("impUrls", "");
            if (impressionUrlString != null && impressionUrlString.length() > 0) {
                optString3 = impressionUrlString + "," + optString3;
            }
            sASAdElement.setImpressionUrlString(optString3);
            sASAdElement.setClickPixelUrl(optJSONObject.optString("countClickUrl"));
            sASAdElement.setOpenClickInApplication(optJSONObject.optString("openInApp").equals("1"));
            sASAdElement.setCloseButtonPosition(optJSONObject.optInt("closePosition", 1));
            double optDouble = optJSONObject.optDouble(VastIconXmlManager.DURATION, -1.0d);
            if (optDouble >= 0.0d) {
                sASAdElement.setAdDuration((int) (optDouble * 1000.0d));
            }
            sASAdElement.setInsertionId(optJSONObject.optInt("insertionId", 0));
            sASAdElement.setPrefetchable(!optJSONObject.optString("isOffline", AppEventsConstants.EVENT_PARAM_VALUE_NO).equals(AppEventsConstants.EVENT_PARAM_VALUE_NO));
            sASAdElement.setNeedsDataConnection(optJSONObject.optString("isOffline").equals("2"));
            long optLong = 1000 * optJSONObject.optLong("expirationDate", 0L);
            if (optLong > 0) {
                Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("GMT"));
                calendar.setTimeInMillis(optLong);
                sASAdElement.setExpirationDate(calendar.getTime());
            }
            String optString4 = optJSONObject.optString("clickUrl");
            if (optString4.length() > 0) {
                sASAdElement.setClickUrl(optString4);
            }
            try {
                sASAdElement.setPortraitWidth(optJSONObject.getInt("portraitWidth"));
            } catch (JSONException e2) {
            }
            try {
                sASAdElement.setPortraitHeight(optJSONObject.getInt("portraitHeight"));
            } catch (JSONException e3) {
            }
            try {
                sASAdElement.setLandscapeWidth(optJSONObject.getInt("landscapeWidth"));
            } catch (JSONException e4) {
            }
            try {
                sASAdElement.setLandscapeHeight(optJSONObject.getInt("landscapeHeight"));
            } catch (JSONException e5) {
            }
            sASAdElement.setTransferTouchEvents(optJSONObject.optString("transferTouchEvents").equals("1"));
            sASAdElement.setCloseOnClick(optJSONObject.optString("closeOnClick", "1").equals("1"));
            sASAdElement.setCloseButtonAppearanceDelay(optJSONObject.optInt("closeAppearanceDelay", 0) * 1000);
            sASAdElement.setDisplayCloseAppearanceCountDown(optJSONObject.optString("closeAppearanceCountdown").equals("1"));
            JSONObject optJSONObject3 = optJSONObject.optJSONObject("extraParameters");
            if (optJSONObject3 != null) {
                sASAdElement.setExtraParameters(a(optJSONObject3));
            }
            d[] b = b(optJSONObject);
            if (b != null) {
                sASAdElement.setViewabilityPixels(b);
            }
            sASAdElement.setSwipeToClose(optJSONObject.optString("swipeToClose", AppEventsConstants.EVENT_PARAM_VALUE_NO).equals("1"));
        }
        if (optJSONArray != null) {
            if (sASAdElement == null) {
                sASAdElement = new SASAdElement();
            }
            sASAdElement.setCandidateMediationAds(a(optJSONArray));
        }
        return sASAdElement;
    }

    private static com.smartadserver.android.library.model.a[] a(JSONArray jSONArray) throws JSONException {
        com.smartadserver.android.library.model.a[] aVarArr = new com.smartadserver.android.library.model.a[jSONArray.length()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < jSONArray.length()) {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                aVarArr[i2] = new com.smartadserver.android.library.model.a();
                aVarArr[i2].a(jSONObject.optInt("sdkId", -1));
                aVarArr[i2].a(jSONObject.optString("impUrl"));
                aVarArr[i2].b(jSONObject.optString("countClickUrl"));
                d[] b = b(jSONObject);
                if (b != null) {
                    aVarArr[i2].a(b);
                }
                JSONObject optJSONObject = jSONObject.optJSONObject("placementConfig");
                HashMap<String, String> hashMap = new HashMap<>();
                Iterator<String> keys = optJSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap.put(next, optJSONObject.getString(next));
                }
                aVarArr[i2].a(hashMap);
                i = i2 + 1;
            } else {
                return aVarArr;
            }
        }
    }

    private static HashMap<String, Object> a(JSONObject jSONObject) {
        HashMap<String, Object> hashMap = new HashMap<>();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object optJSONObject = jSONObject.optJSONObject(next);
            if (optJSONObject == null) {
                optJSONObject = jSONObject.optString(next);
            }
            hashMap.put(next, optJSONObject);
        }
        return hashMap;
    }

    private static d[] b(JSONObject jSONObject) throws JSONException {
        int length;
        JSONArray optJSONArray = jSONObject.optJSONArray("viewCount");
        if (optJSONArray == null || (length = optJSONArray.length()) <= 0) {
            return null;
        }
        d[] dVarArr = new d[length];
        for (int i = 0; i < length; i++) {
            JSONObject jSONObject2 = (JSONObject) optJSONArray.get(i);
            dVarArr[i] = new d(jSONObject2.optString("trackUrl"), Math.max(0, jSONObject2.optInt("area", 0)) / 100.0d, Math.max(0, jSONObject2.optInt(VastIconXmlManager.DURATION, 0) * 1000));
        }
        return dVarArr;
    }

    public static SASAdElement a(JSONObject jSONObject, long j) throws JSONException, SASAdTimeoutException, SASVASTParsingException {
        SASAdElement sASAdElement = null;
        int optInt = jSONObject.optInt("type", -1);
        if (optInt == 0) {
            sASAdElement = new SASNativeVideoAdElement(jSONObject, j);
        } else if (optInt == 1) {
            sASAdElement = new SASNativeParallaxAdElement(jSONObject);
        }
        if (sASAdElement == null) {
            throw new JSONException("invalid type " + optInt + " for 'native' element in Ad");
        }
        return sASAdElement;
    }
}
