package com.smaato.soma.internal.requests.settings;

import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.view.Display;
import android.view.WindowManager;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.exception.FacebookAttributionFailedException;
import com.smaato.soma.exception.GeneratingDeviceDataFailedException;
import com.smaato.soma.exception.GettingDisplayLanguageFailed;
import com.smaato.soma.exception.GoogleAdvertisingIdFailed;
import com.smaato.soma.exception.OsNameFailedException;
import com.smaato.soma.exception.RetrievingConnectionTypeFailed;
import com.smaato.soma.exception.RetrievingDeviceBrandFailed;
import com.smaato.soma.exception.RetrievingDeviceModelFailed;
import com.smaato.soma.exception.RetrievingDeviceOrientationFailed;
import com.smaato.soma.exception.RetrievingReleaseVersionFailed;
import com.smaato.soma.exception.UnableToGetDeviceType;
import com.smaato.soma.exception.UnableToGetScreenWidth;
import com.smaato.soma.exception.UnableToGetTheScreenHeight;
import com.smaato.soma.internal.c.k;
import com.smaato.soma.l;
import java.util.HashMap;
import java.util.Locale;
/* compiled from: DeviceDataCollector.java */
/* loaded from: classes3.dex */
public class a {
    private static final Uri d = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
    private static a e;
    private String f;
    private Context l;

    /* renamed from: a  reason: collision with root package name */
    protected String f5061a = "";
    protected String b = "";
    protected String c = "";
    private String g = null;
    private String h = null;
    private String i = "SOMA_DATA";
    private String j = "SOMA_GAID";
    private String k = "SOMA_DNT";

    private a() {
        new l<Void>() { // from class: com.smaato.soma.internal.requests.settings.a.1
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                a.this.m();
                a.this.f();
                return null;
            }
        }.c();
    }

    public static a a() {
        if (e == null) {
            e = new a();
        }
        return e;
    }

    public final String b() throws RetrievingReleaseVersionFailed {
        try {
            return Build.VERSION.RELEASE;
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new RetrievingReleaseVersionFailed(e3);
        }
    }

    public final String c() throws RetrievingDeviceModelFailed {
        try {
            return Build.MODEL;
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new RetrievingDeviceModelFailed(e3);
        }
    }

    public final String d() throws RetrievingDeviceBrandFailed {
        try {
            return Build.BRAND;
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new RetrievingDeviceBrandFailed(e3);
        }
    }

    public final String e() throws RetrievingConnectionTypeFailed {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.requests.settings.a.2
            });
        } catch (RuntimeException e2) {
        } catch (Exception e3) {
        }
        if (this.f != null) {
            return this.f;
        }
        if (this.l.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == -1) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("Data_Collector", "You should add the permission ACCESS_NETWORK_STATE in the manifest file.", 1, DebugCategory.VERVOSE));
            return null;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.l.getSystemService("connectivity")).getActiveNetworkInfo();
        TelephonyManager telephonyManager = (TelephonyManager) this.l.getSystemService("phone");
        this.g = telephonyManager.getNetworkOperatorName();
        this.h = telephonyManager.getNetworkOperator();
        if (activeNetworkInfo != null) {
            int type = activeNetworkInfo.getType();
            int subtype = activeNetworkInfo.getSubtype();
            if (type == 1) {
                this.f = "wifi";
            } else if (type == 0) {
                switch (subtype) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                        return "2g";
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                        return "3g";
                    case 13:
                        return "4g";
                    default:
                        return "carrier";
                }
            }
            return this.f;
        }
        return "";
    }

    public final void f() throws FacebookAttributionFailedException {
        try {
            new C0555a().start();
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new FacebookAttributionFailedException(e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2) {
        try {
            SharedPreferences.Editor edit = o().getSharedPreferences(this.i, 0).edit();
            edit.putString(this.j, str);
            edit.putString(this.k, str2);
            edit.apply();
        } catch (Exception e2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        try {
            SharedPreferences.Editor edit = o().getSharedPreferences(this.i, 0).edit();
            edit.remove(this.i);
            edit.remove(this.k);
            edit.apply();
        } catch (Exception e2) {
        }
    }

    private HashMap<String, String> r() {
        try {
            SharedPreferences sharedPreferences = o().getSharedPreferences(this.i, 0);
            HashMap<String, String> hashMap = new HashMap<>();
            try {
                String string = sharedPreferences.getString(this.j, "");
                String string2 = sharedPreferences.getString(this.k, "");
                if (string != null && !string.isEmpty()) {
                    hashMap.put(this.j, string);
                }
                if (string2 != null && !string2.isEmpty()) {
                    hashMap.put(this.k, string2);
                    return hashMap;
                }
                return hashMap;
            } catch (Exception e2) {
                return hashMap;
            }
        } catch (Exception e3) {
            return null;
        }
    }

    public final void a(Context context) {
        this.l = context;
    }

    public final String a(com.smaato.soma.internal.requests.a aVar, double d2, double d3) throws GeneratingDeviceDataFailedException {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.requests.settings.a.3
            });
            StringBuffer stringBuffer = new StringBuffer();
            String e2 = e();
            if (e2 != null && e2.length() > 0) {
                stringBuffer.append("&connection=");
                stringBuffer.append(k.a(e2));
            }
            if (this.g != null && this.g.length() > 0) {
                stringBuffer.append("&carrier=");
                stringBuffer.append(k.a(this.g));
            }
            if (this.h != null && this.h.length() > 0) {
                stringBuffer.append("&carriercode=");
                stringBuffer.append(k.a(this.h));
            }
            if (this.f5061a != null && this.f5061a.length() > 0) {
                stringBuffer.append("&fattributionid=");
                stringBuffer.append(k.a(this.f5061a));
            }
            try {
                stringBuffer.append(aVar.a().a(d2, d3));
                String b2 = b();
                if (b2 != null && b2.length() > 0) {
                    stringBuffer.append("&osversion=");
                    stringBuffer.append(k.a(b2));
                }
                String c = c();
                if (c != null && c.length() > 0) {
                    stringBuffer.append("&devicemodel=");
                    stringBuffer.append(k.a(c));
                }
                String d4 = d();
                if (d4 != null && d4.length() > 0) {
                    stringBuffer.append("&devicebrand=");
                    stringBuffer.append(k.a(d4));
                }
                int g = a().g();
                if (g > 0) {
                    stringBuffer.append("&screenwidth=" + g);
                }
                int h = a().h();
                if (h > 0) {
                    stringBuffer.append("&screenheight=" + h);
                }
                stringBuffer.append("&devicetype=" + b(this.l));
                String l = a().l();
                if (l != null && l.length() > 0) {
                    stringBuffer.append("&lang=" + l);
                }
                stringBuffer.append("&osname=" + n());
                stringBuffer.append("&portrait=" + i());
                stringBuffer.append("&mraidver=2");
                try {
                    HashMap<String, String> r = r();
                    if (r != null) {
                        if (r.get(this.j) != null && !r.get(this.j).isEmpty()) {
                            stringBuffer.append("&googleadid=" + r.get(this.j));
                        }
                        if (r.get(this.k) != null && !r.get(this.k).isEmpty()) {
                            stringBuffer.append("&googlednt=" + r.get(this.k));
                        }
                    }
                } catch (Exception e3) {
                }
            } catch (Exception e4) {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("Data_Collector", "Cannot retreive device info", 1, DebugCategory.EXCEPTION, e4));
            }
            return stringBuffer.toString();
        } catch (RuntimeException e5) {
            throw e5;
        } catch (Exception e6) {
            throw new GeneratingDeviceDataFailedException(e6);
        }
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [android.view.WindowManager, int] */
    public int g() throws UnableToGetScreenWidth {
        ?? r0;
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.requests.settings.a.4
            });
            try {
                Display defaultDisplay = ((WindowManager) this.l.getSystemService("window")).getDefaultDisplay();
                Point point = new Point();
                if (Build.VERSION.SDK_INT >= 13) {
                    defaultDisplay.getSize(point);
                } else {
                    point.x = defaultDisplay.getWidth();
                    point.y = defaultDisplay.getHeight();
                }
                r0 = point.x;
                return r0;
            } catch (NoSuchMethodError e2) {
                return r0.getDefaultDisplay().getWidth();
            }
        } catch (RuntimeException e3) {
            throw e3;
        } catch (Exception e4) {
            throw new UnableToGetScreenWidth(e4);
        }
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [android.view.WindowManager, int] */
    public int h() throws UnableToGetTheScreenHeight {
        ?? r0;
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.requests.settings.a.5
            });
            try {
                Display defaultDisplay = ((WindowManager) this.l.getSystemService("window")).getDefaultDisplay();
                Point point = new Point();
                if (Build.VERSION.SDK_INT >= 13) {
                    defaultDisplay.getSize(point);
                } else {
                    point.x = defaultDisplay.getWidth();
                    point.y = defaultDisplay.getHeight();
                }
                r0 = point.y;
                return r0;
            } catch (NoSuchMethodError e2) {
                return r0.getDefaultDisplay().getHeight();
            }
        } catch (RuntimeException e3) {
            throw e3;
        } catch (Exception e4) {
            throw new UnableToGetTheScreenHeight(e4);
        }
    }

    public boolean i() throws RetrievingDeviceOrientationFailed {
        try {
            this.l.getResources().getConfiguration();
            return this.l.getResources().getConfiguration().orientation == 1;
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new RetrievingDeviceOrientationFailed(e3);
        }
    }

    public int j() throws RetrievingDeviceOrientationFailed {
        return new l<Integer>() { // from class: com.smaato.soma.internal.requests.settings.a.6
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Integer b() throws Exception {
                return Integer.valueOf(a.this.l.getResources().getConfiguration().orientation);
            }
        }.c().intValue();
    }

    public int k() throws RetrievingDeviceOrientationFailed {
        return new l<Integer>() { // from class: com.smaato.soma.internal.requests.settings.a.7
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Integer b() throws Exception {
                return Integer.valueOf(((WindowManager) a.this.l.getSystemService("window")).getDefaultDisplay().getRotation());
            }
        }.c().intValue();
    }

    public int a(int i, int i2) {
        int i3 = 8;
        int i4 = 9;
        try {
            if (Build.VERSION.SDK_INT <= 8) {
                i4 = 1;
                i3 = 0;
            }
            if (i == 0 || i == 1) {
                if (i2 == 1) {
                    return 1;
                }
                if (i2 == 2) {
                    return 0;
                }
            } else if (i == 2 || i == 3) {
                if (i2 != 1) {
                    if (i2 == 2) {
                        return i3;
                    }
                } else {
                    return i4;
                }
            }
            return 1;
        } catch (RuntimeException e2) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("Data_Collector", "Exception in getting Device Orientations", 1, DebugCategory.ERROR));
            return 1;
        } catch (Exception e3) {
            e3.printStackTrace();
            return 1;
        }
    }

    public String l() throws GettingDisplayLanguageFailed {
        try {
            if (this.l == null) {
                return "";
            }
            StringBuffer stringBuffer = new StringBuffer("");
            String language = this.l.getResources().getConfiguration().locale.getLanguage();
            String country = this.l.getResources().getConfiguration().locale.getCountry();
            if (language != null && language.length() > 0 && country != null && country.length() > 0) {
                stringBuffer.append(language);
                stringBuffer.append("-");
                stringBuffer.append(country);
            }
            return stringBuffer.toString();
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new GettingDisplayLanguageFailed(e3);
        }
    }

    public static int b(Context context) throws UnableToGetDeviceType {
        try {
            return (context.getResources().getConfiguration().screenLayout & 15) >= 3 ? 1 : 0;
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new UnableToGetDeviceType(e3);
        }
    }

    public final void m() throws GoogleAdvertisingIdFailed {
        try {
            new b().start();
        } catch (RuntimeException e2) {
        } catch (Exception e3) {
        }
    }

    public String n() throws OsNameFailedException {
        try {
            if (Build.BRAND.toLowerCase(Locale.ENGLISH).contains("blackberry")) {
                return "blackberry";
            }
            if (Build.MODEL.toLowerCase(Locale.ENGLISH).contains("kindle")) {
                return "kindle";
            }
            return io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE;
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new OsNameFailedException(e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DeviceDataCollector.java */
    /* renamed from: com.smaato.soma.internal.requests.settings.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0555a extends Thread {
        private C0555a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            new l<Void>() { // from class: com.smaato.soma.internal.requests.settings.a.a.1
                @Override // com.smaato.soma.l
                /* renamed from: a */
                public Void b() throws Exception {
                    Cursor cursor;
                    Cursor cursor2 = null;
                    com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.requests.settings.a.a.1.1
                    });
                    try {
                        cursor = a.this.l.getContentResolver().query(a.d, new String[]{"aid"}, null, null, null);
                    } catch (Exception e) {
                        cursor = null;
                    } catch (Throwable th) {
                        th = th;
                    }
                    if (cursor != null) {
                        try {
                        } catch (Exception e2) {
                            if (cursor != null) {
                                cursor.close();
                            }
                            return null;
                        } catch (Throwable th2) {
                            cursor2 = cursor;
                            th = th2;
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            throw th;
                        }
                        if (cursor.moveToFirst()) {
                            a.this.f5061a = cursor.getString(cursor.getColumnIndex("aid"));
                            if (cursor != null) {
                                cursor.close();
                            }
                            return null;
                        }
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
            }.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DeviceDataCollector.java */
    /* loaded from: classes3.dex */
    public class b extends Thread {
        private b() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            new l<Void>() { // from class: com.smaato.soma.internal.requests.settings.a.b.1
                @Override // com.smaato.soma.l
                /* renamed from: a */
                public Void b() throws Exception {
                    try {
                        AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(a.this.l);
                        a.this.b = advertisingIdInfo.getId();
                        a.this.c = advertisingIdInfo.isLimitAdTrackingEnabled() ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO;
                        a.this.q();
                        a.this.a(a.this.b, a.this.c);
                        return null;
                    } catch (Exception e) {
                        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("Data_Collector", "Device is not having the latest gms installed for GoogleAdvertisingIdProvider.Please add dependency:  compile 'com.google.android.gms:play-services-ads:7.8.+' to your build.gradle!", 0, DebugCategory.ERROR));
                        return null;
                    } catch (NoClassDefFoundError e2) {
                        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("Data_Collector", "Please add dependency:  compile 'com.google.android.gms:play-services-ads:7.8.+' to your build.gradle!", 0, DebugCategory.ERROR));
                        return null;
                    } catch (RuntimeException e3) {
                        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("Data_Collector", "Please add dependency:  compile 'com.google.android.gms:play-services-ads:7.8.+' to your build.gradle!", 0, DebugCategory.ERROR));
                        return null;
                    }
                }
            }.c();
            super.run();
        }
    }

    public final Context o() {
        return this.l;
    }
}
