package com.applovin.impl.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdkSettings;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ca {

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinSdkImpl f1627a;
    private final AppLovinLogger b;
    private final Context c;
    private final Object[] d = new Object[bx.b()];

    /* JADX INFO: Access modifiers changed from: package-private */
    public ca(AppLovinSdkImpl appLovinSdkImpl) {
        this.f1627a = appLovinSdkImpl;
        this.b = appLovinSdkImpl.getLogger();
        this.c = appLovinSdkImpl.getApplicationContext();
    }

    private static bz a(String str) {
        for (bz bzVar : bx.a()) {
            if (bzVar.b().equals(str)) {
                return bzVar;
            }
        }
        return null;
    }

    private static Object a(String str, JSONObject jSONObject, Object obj) {
        if (obj instanceof Boolean) {
            return Boolean.valueOf(jSONObject.getBoolean(str));
        }
        if (obj instanceof Float) {
            return Float.valueOf((float) jSONObject.getDouble(str));
        }
        if (obj instanceof Integer) {
            return Integer.valueOf(jSONObject.getInt(str));
        }
        if (obj instanceof Long) {
            return Long.valueOf(jSONObject.getLong(str));
        }
        if (!(obj instanceof String)) {
            throw new RuntimeException("SDK Error: unknown value type: " + obj.getClass());
        }
        return jSONObject.getString(str);
    }

    private String e() {
        return "com.applovin.sdk." + di.a(this.f1627a.getSdkKey()) + ".";
    }

    public SharedPreferences a() {
        if (this.c == null) {
            throw new IllegalArgumentException("No context specified");
        }
        return this.c.getSharedPreferences("com.applovin.sdk.1", 0);
    }

    public Object a(bz bzVar) {
        Object a2;
        if (bzVar == null) {
            throw new IllegalArgumentException("No setting type specified");
        }
        synchronized (this.d) {
            Object obj = this.d[bzVar.a()];
            a2 = obj != null ? bzVar.a(obj) : bzVar.c();
        }
        return a2;
    }

    public void a(bz bzVar, Object obj) {
        if (bzVar == null) {
            throw new IllegalArgumentException("No setting type specified");
        }
        if (obj == null) {
            throw new IllegalArgumentException("No new value specified");
        }
        synchronized (this.d) {
            this.d[bzVar.a()] = obj;
        }
        this.b.d("SettingsManager", "Setting update: " + bzVar.b() + " set to \"" + obj + "\"");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AppLovinSdkSettings appLovinSdkSettings) {
        boolean z;
        boolean z2;
        long j = 0;
        boolean z3 = false;
        this.b.i("SettingsManager", "Loading user-defined settings...");
        if (appLovinSdkSettings == null) {
            return;
        }
        synchronized (this.d) {
            this.d[bx.i.a()] = Boolean.valueOf(appLovinSdkSettings.isVerboseLoggingEnabled());
            long bannerAdRefreshSeconds = appLovinSdkSettings.getBannerAdRefreshSeconds();
            if (bannerAdRefreshSeconds >= 0) {
                if (bannerAdRefreshSeconds > 0) {
                    j = Math.max(30L, bannerAdRefreshSeconds);
                }
                this.d[bx.u.a()] = Long.valueOf(j);
                this.d[bx.t.a()] = true;
            } else if (bannerAdRefreshSeconds == -1) {
                this.d[bx.t.a()] = false;
            }
            String autoPreloadSizes = appLovinSdkSettings.getAutoPreloadSizes();
            if (autoPreloadSizes == null) {
                autoPreloadSizes = "NONE";
            }
            Object[] objArr = this.d;
            int a2 = bx.D.a();
            if (autoPreloadSizes.equals("NONE")) {
                autoPreloadSizes = "";
            }
            objArr[a2] = autoPreloadSizes;
            String autoPreloadTypes = appLovinSdkSettings.getAutoPreloadTypes();
            if (autoPreloadTypes == null) {
                autoPreloadTypes = "NONE";
            }
            if (!autoPreloadTypes.equals("NONE")) {
                String[] split = autoPreloadTypes.split(",");
                z = false;
                z2 = false;
                for (String str : split) {
                    if (str.equals(AppLovinAdType.REGULAR.getLabel())) {
                        z2 = true;
                    } else if (str.equals(AppLovinAdType.INCENTIVIZED.getLabel()) || str.contains("INCENT") || str.contains("REWARD")) {
                        z = true;
                    } else if (str.equals(NativeAdImpl.TYPE_NATIVE.getLabel())) {
                        z3 = true;
                    }
                }
            } else {
                z = false;
                z2 = false;
            }
            if (!z2) {
                this.d[bx.D.a()] = "";
            }
            this.d[bx.E.a()] = Boolean.valueOf(z);
            this.d[bx.az.a()] = Boolean.valueOf(z3);
            if (appLovinSdkSettings instanceof ax) {
                for (Map.Entry entry : ((ax) appLovinSdkSettings).b().entrySet()) {
                    this.d[((bz) entry.getKey()).a()] = entry.getValue();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(JSONObject jSONObject) {
        this.b.d("SettingsManager", "Loading settings from JSON array...");
        synchronized (this.d) {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (next != null && next.length() > 0) {
                    try {
                        bz a2 = a(next);
                        if (a2 != null) {
                            Object a3 = a(next, jSONObject, a2.c());
                            this.d[a2.a()] = a3;
                            this.b.d("SettingsManager", "Setting update: " + a2.b() + " set to \"" + a3 + "\"");
                        } else {
                            this.b.w("SettingsManager", "Unknown setting recieved: " + next);
                        }
                    } catch (JSONException e) {
                        this.b.e("SettingsManager", "Unable to parse JSON settings array", e);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        if (this.c == null) {
            throw new IllegalArgumentException("No context specified");
        }
        this.b.i("SettingsManager", "Saving settings with the application...");
        String e = e();
        SharedPreferences.Editor edit = a().edit();
        synchronized (this.d) {
            for (bz bzVar : bx.a()) {
                Object obj = this.d[bzVar.a()];
                if (obj != null) {
                    String str = e + bzVar.b();
                    if (obj instanceof Boolean) {
                        edit.putBoolean(str, ((Boolean) obj).booleanValue());
                    } else if (obj instanceof Float) {
                        edit.putFloat(str, ((Float) obj).floatValue());
                    } else if (obj instanceof Integer) {
                        edit.putInt(str, ((Integer) obj).intValue());
                    } else if (obj instanceof Long) {
                        edit.putLong(str, ((Long) obj).longValue());
                    } else if (!(obj instanceof String)) {
                        throw new RuntimeException("SDK Error: unknown value: " + obj.getClass());
                    } else {
                        edit.putString(str, (String) obj);
                    }
                }
            }
        }
        edit.commit();
        this.b.d("SettingsManager", "Settings saved with the application.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        Object valueOf;
        if (this.c == null) {
            throw new IllegalArgumentException("No context specified");
        }
        this.b.i("SettingsManager", "Loading settings saved with the application...");
        String e = e();
        SharedPreferences a2 = a();
        synchronized (this.d) {
            for (bz bzVar : bx.a()) {
                try {
                    String str = e + bzVar.b();
                    Object c = bzVar.c();
                    if (c instanceof Boolean) {
                        valueOf = Boolean.valueOf(a2.getBoolean(str, ((Boolean) c).booleanValue()));
                    } else if (c instanceof Float) {
                        valueOf = Float.valueOf(a2.getFloat(str, ((Float) c).floatValue()));
                    } else if (c instanceof Integer) {
                        valueOf = Integer.valueOf(a2.getInt(str, ((Integer) c).intValue()));
                    } else if (!(c instanceof Long)) {
                        if (!(c instanceof String)) {
                            throw new RuntimeException("SDK Error: unknown value: " + c.getClass());
                            break;
                        }
                        valueOf = a2.getString(str, (String) c);
                    } else {
                        valueOf = Long.valueOf(a2.getLong(str, ((Long) c).longValue()));
                    }
                    this.d[bzVar.a()] = valueOf;
                } catch (Exception e2) {
                    this.b.e("SettingsManager", "Unable to load \"" + bzVar.b() + "\"", e2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        synchronized (this.d) {
            Arrays.fill(this.d, (Object) null);
        }
        SharedPreferences.Editor edit = a().edit();
        edit.clear();
        edit.commit();
    }
}
