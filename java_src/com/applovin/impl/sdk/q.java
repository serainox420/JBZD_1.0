package com.applovin.impl.sdk;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.io.InputStream;
import java.util.Scanner;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
class q {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f1665a = {7, 4, 2, 1, 11};
    private static final int[] b = {5, 6, 10, 3, 9, 8, 14};
    private static final int[] c = {15, 12, 13};
    private static final String d = q.class.getSimpleName();

    q() {
    }

    private static NetworkInfo a(Context context) {
        ConnectivityManager connectivityManager;
        if (!r.a("android.permission.ACCESS_NETWORK_STATE", context) || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return null;
        }
        return connectivityManager.getActiveNetworkInfo();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(AppLovinSdkImpl appLovinSdkImpl) {
        NetworkInfo a2 = a(appLovinSdkImpl.getApplicationContext());
        if (a2 != null) {
            int type = a2.getType();
            int subtype = a2.getSubtype();
            String str = type == 1 ? "wifi" : type == 0 ? a(subtype, f1665a) ? "2g" : a(subtype, b) ? "3g" : a(subtype, c) ? "4g" : "mobile" : "unknown";
            appLovinSdkImpl.getLogger().d(d, "Network " + type + "/" + subtype + " resolved to " + str);
            return str;
        }
        return "unknown";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(InputStream inputStream) {
        if (inputStream == null) {
            return null;
        }
        Scanner scanner = new Scanner(inputStream, "UTF-8");
        StringBuilder sb = new StringBuilder();
        while (scanner.hasNextLine()) {
            sb.append(scanner.nextLine());
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str) {
        return str.startsWith("https://") ? str : str.replace("http://", "https://");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str, AppLovinSdkImpl appLovinSdkImpl) {
        if (str == null) {
            throw new IllegalArgumentException("No endpoint specified");
        }
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        String str2 = (String) appLovinSdkImpl.a(bx.e);
        StringBuilder sb = new StringBuilder();
        sb.append((String) appLovinSdkImpl.a(bx.j));
        sb.append(str);
        if (str2 == null || str2.length() <= 0) {
            sb.append("?api_key=");
            sb.append(appLovinSdkImpl.getSdkKey());
        } else {
            sb.append("?device_token=");
            sb.append(str2);
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JSONObject a(JSONObject jSONObject) {
        return (JSONObject) jSONObject.getJSONArray("results").get(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i, AppLovinSdkImpl appLovinSdkImpl) {
        ca settingsManager = appLovinSdkImpl.getSettingsManager();
        if (i == 401) {
            settingsManager.a(bx.c, "");
            settingsManager.a(bx.e, "");
            settingsManager.b();
        } else if (i == 418) {
            settingsManager.a(bx.f1624a, true);
            settingsManager.b();
        } else if (i >= 400 && i < 500) {
            appLovinSdkImpl.h();
        } else if (i != -1) {
        } else {
            appLovinSdkImpl.h();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(JSONObject jSONObject, AppLovinSdkImpl appLovinSdkImpl) {
        if (jSONObject == null) {
            throw new IllegalArgumentException("No response specified");
        }
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        try {
            if (!jSONObject.has("settings")) {
                return;
            }
            ca settingsManager = appLovinSdkImpl.getSettingsManager();
            if (jSONObject.isNull("settings")) {
                return;
            }
            settingsManager.a(jSONObject.getJSONObject("settings"));
            settingsManager.b();
            appLovinSdkImpl.getLogger().d(d, "New settings processed");
        } catch (JSONException e) {
            appLovinSdkImpl.getLogger().e(d, "Unable to parse settings out of API response", e);
        }
    }

    private static boolean a(int i, int[] iArr) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(String str, AppLovinSdkImpl appLovinSdkImpl) {
        if (str == null) {
            throw new IllegalArgumentException("No endpoint specified");
        }
        if (appLovinSdkImpl != null) {
            return ((String) appLovinSdkImpl.a(bx.k)) + str;
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(int i, AppLovinSdkImpl appLovinSdkImpl) {
        if (i == 418) {
            ca settingsManager = appLovinSdkImpl.getSettingsManager();
            settingsManager.a(bx.f1624a, true);
            settingsManager.b();
        }
    }
}
