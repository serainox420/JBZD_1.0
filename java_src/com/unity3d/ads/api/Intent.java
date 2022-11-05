package com.unity3d.ads.api;

import android.app.Activity;
import android.net.Uri;
import com.facebook.applinks.AppLinkData;
import com.facebook.internal.NativeProtocol;
import com.facebook.share.internal.ShareConstants;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.properties.ClientProperties;
import com.unity3d.ads.webview.bridge.WebViewCallback;
import com.unity3d.ads.webview.bridge.WebViewExposed;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class Intent {

    /* loaded from: classes3.dex */
    public enum IntentError {
        COULDNT_PARSE_EXTRAS,
        COULDNT_PARSE_CATEGORIES,
        INTENT_WAS_NULL,
        ACTIVITY_WAS_NULL
    }

    @WebViewExposed
    public static void launch(JSONObject jSONObject, WebViewCallback webViewCallback) {
        android.content.Intent intent;
        String str = (String) jSONObject.opt("className");
        String str2 = (String) jSONObject.opt("packageName");
        String str3 = (String) jSONObject.opt(NativeProtocol.WEB_DIALOG_ACTION);
        String str4 = (String) jSONObject.opt(ShareConstants.MEDIA_URI);
        String str5 = (String) jSONObject.opt("mimeType");
        JSONArray jSONArray = (JSONArray) jSONObject.opt("categories");
        Integer num = (Integer) jSONObject.opt("flags");
        JSONArray jSONArray2 = (JSONArray) jSONObject.opt(AppLinkData.ARGUMENTS_EXTRAS_KEY);
        if (str2 != null && str == null && str3 == null && str5 == null) {
            intent = ClientProperties.getApplicationContext().getPackageManager().getLaunchIntentForPackage(str2);
            if (intent != null && num.intValue() > -1) {
                intent.addFlags(num.intValue());
            }
        } else {
            android.content.Intent intent2 = new android.content.Intent();
            if (str != null && str2 != null) {
                intent2.setClassName(str2, str);
            }
            if (str3 != null) {
                intent2.setAction(str3);
            }
            if (str4 != null) {
                intent2.setData(Uri.parse(str4));
            }
            if (str5 != null) {
                intent2.setType(str5);
            }
            if (num != null && num.intValue() > -1) {
                intent2.setFlags(num.intValue());
            }
            if (!setCategories(intent2, jSONArray)) {
                webViewCallback.error(IntentError.COULDNT_PARSE_CATEGORIES, jSONArray);
            }
            if (!setExtras(intent2, jSONArray2)) {
                webViewCallback.error(IntentError.COULDNT_PARSE_EXTRAS, jSONArray2);
            }
            intent = intent2;
        }
        if (intent != null) {
            if (getStartingActivity() != null) {
                getStartingActivity().startActivity(intent);
                webViewCallback.invoke(new Object[0]);
                return;
            }
            webViewCallback.error(IntentError.ACTIVITY_WAS_NULL, new Object[0]);
            return;
        }
        webViewCallback.error(IntentError.INTENT_WAS_NULL, new Object[0]);
    }

    private static boolean setCategories(android.content.Intent intent, JSONArray jSONArray) {
        if (jSONArray != null && jSONArray.length() > 0) {
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    intent.addCategory(jSONArray.getString(i));
                } catch (Exception e) {
                    DeviceLog.exception("Couldn't parse categories for intent", e);
                    return false;
                }
            }
        }
        return true;
    }

    private static boolean setExtras(android.content.Intent intent, JSONArray jSONArray) {
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    if (!setExtra(intent, jSONObject.getString("key"), jSONObject.get("value"))) {
                        return false;
                    }
                } catch (Exception e) {
                    DeviceLog.exception("Couldn't parse extras", e);
                    return false;
                }
            }
        }
        return true;
    }

    private static boolean setExtra(android.content.Intent intent, String str, Object obj) {
        if (obj instanceof String) {
            intent.putExtra(str, (String) obj);
        } else if (obj instanceof Integer) {
            intent.putExtra(str, ((Integer) obj).intValue());
        } else if (obj instanceof Double) {
            intent.putExtra(str, ((Double) obj).doubleValue());
        } else if (obj instanceof Boolean) {
            intent.putExtra(str, ((Boolean) obj).booleanValue());
        } else {
            DeviceLog.error("Unable to parse launch intent extra " + str);
            return false;
        }
        return true;
    }

    private static Activity getStartingActivity() {
        if (AdUnit.getAdUnitActivity() != null) {
            return AdUnit.getAdUnitActivity();
        }
        if (ClientProperties.getActivity() == null) {
            return null;
        }
        return ClientProperties.getActivity();
    }
}
