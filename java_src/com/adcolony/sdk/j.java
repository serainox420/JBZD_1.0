package com.adcolony.sdk;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.AsyncTask;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.facebook.AccessToken;
import com.facebook.GraphResponse;
import com.facebook.common.util.ByteConstants;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.loopme.debugging.Params;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j {
    static final String f = "3.0.7";
    static final String h = "Development";

    /* renamed from: a  reason: collision with root package name */
    String f1446a;
    boolean b;
    boolean c;
    boolean d;
    int e = 2;
    private String i = io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE;
    private String j = "android_native";
    String g = "";
    private JSONArray k = s.b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        return com.adcolony.sdk.a.l == null ? "" : Settings.Secure.getString(com.adcolony.sdk.a.l.getContentResolver(), "android_id");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        return this.f1446a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c() {
        return System.getProperty("os.arch").toLowerCase();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        this.b = false;
        com.adcolony.sdk.a.a("Device.get_info", new ac() { // from class: com.adcolony.sdk.j.1
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (j.this.n() < 14) {
                    new a(zVar, j.this, false).execute(new Void[0]);
                } else {
                    new a(zVar, j.this, false).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                }
            }
        });
        com.adcolony.sdk.a.a("Device.application_exists", new ac() { // from class: com.adcolony.sdk.j.2
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                JSONObject a2 = s.a();
                s.a(a2, "result", au.a(s.b(zVar.b, "name")));
                s.a(a2, GraphResponse.SUCCESS_KEY, true);
                zVar.a(a2).b();
            }
        });
    }

    String e() {
        return o() ? "tablet" : "phone";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        return this.c;
    }

    String g() {
        if (com.adcolony.sdk.a.l == null) {
            return "";
        }
        String networkOperatorName = ((TelephonyManager) com.adcolony.sdk.a.l.getSystemService("phone")).getNetworkOperatorName();
        if (networkOperatorName.length() == 0) {
            return "unknown";
        }
        return networkOperatorName;
    }

    int h() {
        if (com.adcolony.sdk.a.l == null) {
            return 0;
        }
        Context applicationContext = com.adcolony.sdk.a.l.getApplicationContext();
        Activity activity = com.adcolony.sdk.a.l;
        return ((ActivityManager) applicationContext.getSystemService("activity")).getMemoryClass();
    }

    long i() {
        Runtime runtime = Runtime.getRuntime();
        return (runtime.totalMemory() - runtime.freeMemory()) / ((long) ByteConstants.MB);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float j() {
        return com.adcolony.sdk.a.l == null ? BitmapDescriptorFactory.HUE_RED : com.adcolony.sdk.a.l.getResources().getDisplayMetrics().density;
    }

    String k() {
        return com.adcolony.sdk.a.l == null ? "" : bc.a(com.adcolony.sdk.a.l);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int l() {
        if (com.adcolony.sdk.a.l == null) {
            return 0;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        com.adcolony.sdk.a.l.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int m() {
        if (com.adcolony.sdk.a.l == null) {
            return 0;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        com.adcolony.sdk.a.l.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int n() {
        return Build.VERSION.SDK_INT;
    }

    boolean o() {
        if (com.adcolony.sdk.a.l == null) {
            return false;
        }
        DisplayMetrics displayMetrics = com.adcolony.sdk.a.l.getResources().getDisplayMetrics();
        float f2 = displayMetrics.widthPixels / displayMetrics.xdpi;
        float f3 = displayMetrics.heightPixels / displayMetrics.ydpi;
        return Math.sqrt((double) ((f3 * f3) + (f2 * f2))) >= 6.0d;
    }

    String p() {
        try {
            return Locale.getDefault().getISO3Language();
        } catch (Exception e) {
            return "";
        }
    }

    String q() {
        try {
            return Locale.getDefault().getISO3Country();
        } catch (Exception e) {
            return "";
        }
    }

    String r() {
        return "";
    }

    String s() {
        return Build.MANUFACTURER;
    }

    String t() {
        return Build.MODEL;
    }

    String u() {
        return Build.VERSION.RELEASE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONArray v() {
        return this.k;
    }

    int w() {
        if (com.adcolony.sdk.a.l == null) {
            return 2;
        }
        switch (com.adcolony.sdk.a.l.getResources().getConfiguration().orientation) {
            case 1:
                return 0;
            case 2:
                return 1;
            default:
                return 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean x() {
        if (com.adcolony.sdk.a.l == null) {
            return false;
        }
        int w = w();
        switch (w) {
            case 0:
                if (this.e != 1) {
                    return false;
                }
                u.d.b("Sending device info update");
                this.e = w;
                if (n() < 14) {
                    new a(null, this, true).execute(new Void[0]);
                } else {
                    new a(null, this, true).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                }
                return true;
            case 1:
                if (this.e != 0) {
                    return false;
                }
                u.d.b("Sending device info update");
                this.e = w;
                if (n() < 14) {
                    new a(null, this, true).execute(new Void[0]);
                } else {
                    new a(null, this, true).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                }
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends AsyncTask<Void, Void, JSONObject> {

        /* renamed from: a  reason: collision with root package name */
        z f1449a;
        j b;
        boolean c;

        a(z zVar, j jVar, boolean z) {
            this.f1449a = zVar;
            this.b = jVar;
            this.c = z;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public JSONObject doInBackground(Void... voidArr) {
            if (Build.VERSION.SDK_INT < 14) {
                return null;
            }
            return j.this.a(this.b);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public void onPostExecute(JSONObject jSONObject) {
            if (this.c) {
                new z("Device.update_info", 1, jSONObject).b();
            } else {
                this.f1449a.a(jSONObject).b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONObject a(j jVar) {
        JSONObject a2 = s.a();
        s.a(a2, "carrier_name", jVar.g());
        s.a(a2, "data_path", com.adcolony.sdk.a.m.k.c);
        s.b(a2, "device_api", jVar.n());
        s.a(a2, Params.DEVICE_ID, jVar.k());
        s.b(a2, "display_width", jVar.l());
        s.b(a2, "display_height", jVar.m());
        s.b(a2, "screen_width", jVar.l());
        s.b(a2, "screen_height", jVar.m());
        s.a(a2, "device_type", jVar.e());
        s.a(a2, "locale_language_code", jVar.p());
        s.a(a2, "ln", jVar.p());
        s.a(a2, "locale_country_code", jVar.q());
        s.a(a2, "locale", jVar.q());
        s.a(a2, "mac_address", jVar.r());
        s.a(a2, "manufacturer", jVar.s());
        s.a(a2, "device_brand", jVar.s());
        s.a(a2, "media_path", com.adcolony.sdk.a.m.k.b);
        s.a(a2, "temp_storage_path", com.adcolony.sdk.a.m.k.d);
        s.b(a2, "memory_class", jVar.h());
        s.b(a2, "network_speed", 20);
        s.a(a2, "memory_used_mb", jVar.i());
        s.a(a2, PubMaticConstants.MODEL_PARAM, jVar.t());
        s.a(a2, "device_model", jVar.t());
        s.a(a2, Params.SDK_TYPE, "android_native");
        s.a(a2, Params.SDK_VERSION, f);
        s.a(a2, "network_type", com.adcolony.sdk.a.m.p.c());
        s.a(a2, "os_version", jVar.u());
        s.a(a2, "os_name", io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE);
        s.a(a2, "platform", io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE);
        s.a(a2, "arch", jVar.c());
        s.a(a2, AccessToken.USER_ID_KEY, s.b(com.adcolony.sdk.a.m.v.d, AccessToken.USER_ID_KEY));
        s.a(a2, "app_id", com.adcolony.sdk.a.m.v.f977a);
        s.a(a2, "immersion", this.d);
        this.e = jVar.w();
        s.b(a2, "current_orientation", this.e);
        JSONArray b = s.b();
        if (au.a("com.android.vending")) {
            b.put("google");
        }
        if (au.a("com.amazon.venezia")) {
            b.put("amazon");
        }
        s.a(a2, "available_stores", b);
        if (com.adcolony.sdk.a.l != null) {
            try {
                PackageInfo packageInfo = com.adcolony.sdk.a.l.getPackageManager().getPackageInfo(com.adcolony.sdk.a.l.getPackageName(), 4096);
                if (packageInfo.requestedPermissions != null) {
                    this.k = s.b();
                    for (int i = 0; i < packageInfo.requestedPermissions.length; i++) {
                        this.k.put(packageInfo.requestedPermissions[i]);
                    }
                }
            } catch (Exception e) {
            }
        }
        s.a(a2, NativeProtocol.RESULT_ARGS_PERMISSIONS, this.k);
        int i2 = 40;
        while (!jVar.b && i2 > 0) {
            try {
                Thread.sleep(50L);
                i2--;
            } catch (Exception e2) {
            }
        }
        s.a(a2, "advertiser_id", jVar.b());
        s.a(a2, "limit_tracking", jVar.f());
        if (jVar.b() == null || jVar.b().equals("")) {
            s.a(a2, "android_id_sha1", au.c(jVar.a()));
        }
        return a2;
    }
}
