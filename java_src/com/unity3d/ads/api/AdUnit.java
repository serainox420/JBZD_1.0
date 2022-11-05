package com.unity3d.ads.api;

import com.openx.view.mraid.JSInterface;
import com.unity3d.ads.adunit.AdUnitActivity;
import com.unity3d.ads.adunit.AdUnitError;
import com.unity3d.ads.adunit.AdUnitSoftwareActivity;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.misc.Utilities;
import com.unity3d.ads.properties.ClientProperties;
import com.unity3d.ads.webview.bridge.WebViewCallback;
import com.unity3d.ads.webview.bridge.WebViewExposed;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes.dex */
public class AdUnit {
    private static AdUnitActivity _adUnitActivity;
    private static int _currentActivityId = -1;

    private AdUnit() {
    }

    public static void setAdUnitActivity(AdUnitActivity adUnitActivity) {
        _adUnitActivity = adUnitActivity;
    }

    public static AdUnitActivity getAdUnitActivity() {
        return _adUnitActivity;
    }

    public static int getCurrentAdUnitActivityId() {
        return _currentActivityId;
    }

    public static void setCurrentAdUnitActivityId(int i) {
        _currentActivityId = i;
    }

    @WebViewExposed
    public static void open(Integer num, JSONArray jSONArray, Integer num2, WebViewCallback webViewCallback) {
        open(num, jSONArray, num2, null, webViewCallback);
    }

    @WebViewExposed
    public static void open(Integer num, JSONArray jSONArray, Integer num2, JSONArray jSONArray2, WebViewCallback webViewCallback) {
        open(num, jSONArray, num2, jSONArray2, 0, true, webViewCallback);
    }

    @WebViewExposed
    public static void open(Integer num, JSONArray jSONArray, Integer num2, JSONArray jSONArray2, Integer num3, Boolean bool, WebViewCallback webViewCallback) {
        android.content.Intent intent;
        if (bool.booleanValue()) {
            DeviceLog.debug("Unity Ads opening new hardware accelerated ad unit activity");
            intent = new android.content.Intent(ClientProperties.getActivity(), AdUnitActivity.class);
        } else {
            DeviceLog.debug("Unity Ads opening new ad unit activity, hardware acceleration disabled");
            intent = new android.content.Intent(ClientProperties.getActivity(), AdUnitSoftwareActivity.class);
        }
        intent.addFlags(268500992);
        if (num != null) {
            try {
                intent.putExtra(AdUnitActivity.EXTRA_ACTIVITY_ID, num.intValue());
                setCurrentAdUnitActivityId(num.intValue());
                try {
                    intent.putExtra(AdUnitActivity.EXTRA_VIEWS, getViewList(jSONArray));
                    if (jSONArray2 != null) {
                        try {
                            intent.putExtra(AdUnitActivity.EXTRA_KEY_EVENT_LIST, getKeyEventList(jSONArray2));
                        } catch (Exception e) {
                            DeviceLog.exception("Error parsing views from viewList", e);
                            webViewCallback.error(AdUnitError.CORRUPTED_KEYEVENTLIST, jSONArray2, e.getMessage());
                            return;
                        }
                    }
                    intent.putExtra(AdUnitActivity.EXTRA_SYSTEM_UI_VISIBILITY, num3);
                    intent.putExtra("orientation", num2);
                    ClientProperties.getActivity().startActivity(intent);
                    DeviceLog.debug("Opened AdUnitActivity with: " + jSONArray.toString());
                    webViewCallback.invoke(new Object[0]);
                    return;
                } catch (Exception e2) {
                    DeviceLog.exception("Error parsing views from viewList", e2);
                    webViewCallback.error(AdUnitError.CORRUPTED_VIEWLIST, jSONArray, e2.getMessage());
                    return;
                }
            } catch (Exception e3) {
                DeviceLog.exception("Could not set activityId for intent", e3);
                webViewCallback.error(AdUnitError.ACTIVITY_ID, Integer.valueOf(num.intValue()), e3.getMessage());
                return;
            }
        }
        DeviceLog.error("Activity ID is NULL");
        webViewCallback.error(AdUnitError.ACTIVITY_ID, "Activity ID NULL");
    }

    @WebViewExposed
    public static void close(WebViewCallback webViewCallback) {
        if (getAdUnitActivity() != null) {
            getAdUnitActivity().finish();
            webViewCallback.invoke(new Object[0]);
            return;
        }
        webViewCallback.error(AdUnitError.ACTIVITY_NULL, new Object[0]);
    }

    @WebViewExposed
    public static void setViews(final JSONArray jSONArray, WebViewCallback webViewCallback) {
        boolean z;
        try {
            getViewList(jSONArray);
            z = false;
        } catch (JSONException e) {
            webViewCallback.error(AdUnitError.CORRUPTED_VIEWLIST, jSONArray);
            z = true;
        }
        if (!z) {
            Utilities.runOnUiThread(new Runnable() { // from class: com.unity3d.ads.api.AdUnit.1
                @Override // java.lang.Runnable
                public void run() {
                    if (AdUnit.getAdUnitActivity() != null) {
                        try {
                            AdUnit.getAdUnitActivity().setViews(AdUnit.getViewList(jSONArray));
                        } catch (Exception e2) {
                            DeviceLog.exception("Corrupted viewlist", e2);
                        }
                    }
                }
            });
        }
        if (getAdUnitActivity() == null) {
            webViewCallback.error(AdUnitError.ACTIVITY_NULL, new Object[0]);
        } else {
            webViewCallback.invoke(jSONArray);
        }
    }

    @WebViewExposed
    public static void getViews(WebViewCallback webViewCallback) {
        if (getAdUnitActivity() == null) {
            webViewCallback.error(AdUnitError.ACTIVITY_NULL, new Object[0]);
        } else {
            webViewCallback.invoke(new JSONArray((Collection) Arrays.asList(getAdUnitActivity().getViews())));
        }
    }

    @WebViewExposed
    public static void setOrientation(final Integer num, WebViewCallback webViewCallback) {
        Utilities.runOnUiThread(new Runnable() { // from class: com.unity3d.ads.api.AdUnit.2
            @Override // java.lang.Runnable
            public void run() {
                if (AdUnit.getAdUnitActivity() != null) {
                    AdUnit.getAdUnitActivity().setOrientation(num.intValue());
                }
            }
        });
        if (getAdUnitActivity() == null) {
            webViewCallback.error(AdUnitError.ACTIVITY_NULL, new Object[0]);
        } else {
            webViewCallback.invoke(num);
        }
    }

    @WebViewExposed
    public static void getOrientation(WebViewCallback webViewCallback) {
        if (getAdUnitActivity() == null) {
            webViewCallback.error(AdUnitError.ACTIVITY_NULL, new Object[0]);
        } else {
            webViewCallback.invoke(Integer.valueOf(getAdUnitActivity().getRequestedOrientation()));
        }
    }

    @WebViewExposed
    public static void setKeepScreenOn(final Boolean bool, WebViewCallback webViewCallback) {
        Utilities.runOnUiThread(new Runnable() { // from class: com.unity3d.ads.api.AdUnit.3
            @Override // java.lang.Runnable
            public void run() {
                if (AdUnit.getAdUnitActivity() != null) {
                    AdUnit.getAdUnitActivity().setKeepScreenOn(bool.booleanValue());
                }
            }
        });
        if (getAdUnitActivity() != null) {
            webViewCallback.invoke(new Object[0]);
        } else {
            webViewCallback.error(AdUnitError.ACTIVITY_NULL, new Object[0]);
        }
    }

    @WebViewExposed
    public static void setSystemUiVisibility(final Integer num, WebViewCallback webViewCallback) {
        Utilities.runOnUiThread(new Runnable() { // from class: com.unity3d.ads.api.AdUnit.4
            @Override // java.lang.Runnable
            public void run() {
                if (AdUnit.getAdUnitActivity() != null) {
                    AdUnit.getAdUnitActivity().setSystemUiVisibility(num.intValue());
                }
            }
        });
        if (getAdUnitActivity() == null) {
            webViewCallback.error(AdUnitError.ACTIVITY_NULL, new Object[0]);
        } else {
            webViewCallback.invoke(num);
        }
    }

    @WebViewExposed
    public static void setKeyEventList(JSONArray jSONArray, WebViewCallback webViewCallback) {
        if (getAdUnitActivity() != null) {
            try {
                getAdUnitActivity().setKeyEventList(getKeyEventList(jSONArray));
                webViewCallback.invoke(jSONArray);
                return;
            } catch (Exception e) {
                DeviceLog.exception("Error parsing views from viewList", e);
                webViewCallback.error(AdUnitError.CORRUPTED_KEYEVENTLIST, jSONArray, e.getMessage());
                return;
            }
        }
        webViewCallback.error(AdUnitError.ACTIVITY_NULL, new Object[0]);
    }

    @WebViewExposed
    public static void setViewFrame(final String str, final Integer num, final Integer num2, final Integer num3, final Integer num4, WebViewCallback webViewCallback) {
        Utilities.runOnUiThread(new Runnable() { // from class: com.unity3d.ads.api.AdUnit.5
            @Override // java.lang.Runnable
            public void run() {
                if (AdUnit.getAdUnitActivity() != null) {
                    AdUnit.getAdUnitActivity().setViewFrame(str, num.intValue(), num2.intValue(), num3.intValue(), num4.intValue());
                }
            }
        });
        if (getAdUnitActivity() != null) {
            webViewCallback.invoke(new Object[0]);
        } else {
            webViewCallback.error(AdUnitError.ACTIVITY_NULL, new Object[0]);
        }
    }

    @WebViewExposed
    public static void getViewFrame(String str, WebViewCallback webViewCallback) {
        if (getAdUnitActivity() != null) {
            if (getAdUnitActivity().getViewFrame(str) != null) {
                Map<String, Integer> viewFrame = getAdUnitActivity().getViewFrame(str);
                webViewCallback.invoke(viewFrame.get(JSInterface.JSON_X), viewFrame.get(JSInterface.JSON_Y), viewFrame.get("width"), viewFrame.get("height"));
                return;
            }
            webViewCallback.error(AdUnitError.UNKNOWN_VIEW, new Object[0]);
            return;
        }
        webViewCallback.error(AdUnitError.ACTIVITY_NULL, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String[] getViewList(JSONArray jSONArray) throws JSONException {
        String[] strArr = new String[jSONArray.length()];
        for (int i = 0; i < jSONArray.length(); i++) {
            strArr[i] = jSONArray.getString(i);
        }
        return strArr;
    }

    private static ArrayList<Integer> getKeyEventList(JSONArray jSONArray) throws JSONException {
        ArrayList<Integer> arrayList = new ArrayList<>();
        for (Integer num = 0; num.intValue() < jSONArray.length(); num = Integer.valueOf(num.intValue() + 1)) {
            arrayList.add(Integer.valueOf(jSONArray.getInt(num.intValue())));
        }
        return arrayList;
    }
}
