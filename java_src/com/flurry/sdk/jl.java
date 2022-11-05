package com.flurry.sdk;

import android.provider.Settings;
import android.text.TextUtils;
import com.flurry.sdk.ll;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class jl {
    private static final String b = jl.class.getSimpleName();
    private static jl c;

    /* renamed from: a  reason: collision with root package name */
    public final Map<jt, byte[]> f2923a;
    private final Set<String> d;
    private final kh<ll> e;
    private a f;
    private jv g;
    private String h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public enum a {
        NONE,
        ADVERTISING,
        DEVICE,
        REPORTED_IDS,
        FINISHED
    }

    public static synchronized jl a() {
        jl jlVar;
        synchronized (jl.class) {
            if (c == null) {
                c = new jl();
            }
            jlVar = c;
        }
        return jlVar;
    }

    private jl() {
        HashSet hashSet = new HashSet();
        hashSet.add("null");
        hashSet.add("9774d56d682e549c");
        hashSet.add("dead00beef");
        this.d = Collections.unmodifiableSet(hashSet);
        this.f2923a = new HashMap();
        this.e = new kh<ll>() { // from class: com.flurry.sdk.jl.1
            @Override // com.flurry.sdk.kh
            public final /* synthetic */ void a(ll llVar) {
                switch (AnonymousClass4.f2928a[llVar.c - 1]) {
                    case 1:
                        if (!jl.this.b()) {
                            return;
                        }
                        jy.a().b(new ma() { // from class: com.flurry.sdk.jl.1.1
                            @Override // com.flurry.sdk.ma
                            public final void a() {
                                jl.this.d();
                            }
                        });
                        return;
                    default:
                        return;
                }
            }
        };
        this.f = a.NONE;
        ki.a().a("com.flurry.android.sdk.FlurrySessionEvent", this.e);
        jy.a().b(new ma() { // from class: com.flurry.sdk.jl.2
            @Override // com.flurry.sdk.ma
            public final void a() {
                jl.b(jl.this);
            }
        });
    }

    public final boolean b() {
        return a.FINISHED.equals(this.f);
    }

    public final boolean c() {
        return this.g == null || !this.g.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.flurry.sdk.jl$4  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass4 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2928a;

        static {
            try {
                b[a.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                b[a.ADVERTISING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                b[a.DEVICE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                b[a.REPORTED_IDS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            f2928a = new int[ll.a.a().length];
            try {
                f2928a[ll.a.f3028a - 1] = 1;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        ly.b();
        this.g = e();
        if (b()) {
            h();
            ki.a().a(new jn());
        }
    }

    private static jv e() {
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(jy.a().f2947a);
            return new jv(advertisingIdInfo.getId(), advertisingIdInfo.isLimitAdTrackingEnabled());
        } catch (Exception e) {
            km.b(b, "GOOGLE PLAY SERVICES ERROR: " + e.getMessage());
            km.b(b, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising.");
            return null;
        } catch (NoClassDefFoundError e2) {
            km.b(b, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising.");
            return null;
        }
    }

    private static void a(String str, File file) {
        DataOutputStream dataOutputStream;
        try {
            dataOutputStream = new DataOutputStream(new FileOutputStream(file));
            try {
                dataOutputStream.writeInt(1);
                dataOutputStream.writeUTF(str);
            } catch (Throwable th) {
                th = th;
                try {
                    km.a(6, b, "Error when saving deviceId", th);
                } finally {
                    ly.a(dataOutputStream);
                }
            }
        } catch (Throwable th2) {
            th = th2;
            dataOutputStream = null;
        }
    }

    private static String f() {
        DataInputStream dataInputStream;
        String str = null;
        File fileStreamPath = jy.a().f2947a.getFileStreamPath(".flurryb.");
        if (fileStreamPath != null && fileStreamPath.exists()) {
            try {
                dataInputStream = new DataInputStream(new FileInputStream(fileStreamPath));
            } catch (Throwable th) {
                th = th;
                dataInputStream = null;
            }
            try {
                if (1 == dataInputStream.readInt()) {
                    str = dataInputStream.readUTF();
                }
            } catch (Throwable th2) {
                th = th2;
                try {
                    km.a(6, b, "Error when loading deviceId", th);
                    return str;
                } finally {
                    ly.a((Closeable) dataInputStream);
                }
            }
        }
        return str;
    }

    private String g() {
        String[] list;
        DataInputStream dataInputStream;
        String str = null;
        File filesDir = jy.a().f2947a.getFilesDir();
        if (filesDir != null && (list = filesDir.list(new FilenameFilter() { // from class: com.flurry.sdk.jl.3
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str2) {
                return str2.startsWith(".flurryagent.");
            }
        })) != null && list.length != 0) {
            File fileStreamPath = jy.a().f2947a.getFileStreamPath(list[0]);
            if (fileStreamPath != null && fileStreamPath.exists()) {
                try {
                    dataInputStream = new DataInputStream(new FileInputStream(fileStreamPath));
                    try {
                        if (46586 == dataInputStream.readUnsignedShort() && 2 == dataInputStream.readUnsignedShort()) {
                            dataInputStream.readUTF();
                            str = dataInputStream.readUTF();
                        }
                    } catch (Throwable th) {
                        th = th;
                        try {
                            km.a(6, b, "Error when loading deviceId", th);
                            return str;
                        } finally {
                            ly.a((Closeable) dataInputStream);
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    dataInputStream = null;
                }
            }
        }
        return str;
    }

    private void h() {
        String str;
        if (this.g == null) {
            str = null;
        } else {
            str = this.g.f2940a;
        }
        if (str != null) {
            km.a(3, b, "Fetched advertising id");
            this.f2923a.put(jt.AndroidAdvertisingId, ly.e(str));
        }
        String str2 = this.h;
        if (str2 != null) {
            km.a(3, b, "Fetched device id");
            this.f2923a.put(jt.DeviceId, ly.e(str2));
        }
    }

    static /* synthetic */ void b(jl jlVar) {
        String str;
        while (!a.FINISHED.equals(jlVar.f)) {
            switch (jlVar.f) {
                case NONE:
                    jlVar.f = a.ADVERTISING;
                    break;
                case ADVERTISING:
                    jlVar.f = a.DEVICE;
                    break;
                case DEVICE:
                    jlVar.f = a.REPORTED_IDS;
                    break;
                case REPORTED_IDS:
                    jlVar.f = a.FINISHED;
                    break;
            }
            try {
            } catch (Exception e) {
                km.a(4, b, "Exception during id fetch:" + jlVar.f + ", " + e);
            }
            switch (jlVar.f) {
                case ADVERTISING:
                    jlVar.d();
                    continue;
                case DEVICE:
                    ly.b();
                    String string = Settings.Secure.getString(jy.a().f2947a.getContentResolver(), "android_id");
                    if (!(!TextUtils.isEmpty(string) && !jlVar.d.contains(string.toLowerCase(Locale.US)))) {
                        str = null;
                    } else {
                        str = "AND" + string;
                    }
                    if (TextUtils.isEmpty(str)) {
                        str = f();
                        if (TextUtils.isEmpty(str)) {
                            str = jlVar.g();
                            if (TextUtils.isEmpty(str)) {
                                str = "ID" + Long.toString(Double.doubleToLongBits(Math.random()) + ((System.nanoTime() + (ly.i(lv.a(jy.a().f2947a)) * 37)) * 37), 16);
                            }
                            if (!TextUtils.isEmpty(str)) {
                                File fileStreamPath = jy.a().f2947a.getFileStreamPath(".flurryb.");
                                if (lx.a(fileStreamPath)) {
                                    a(str, fileStreamPath);
                                }
                            }
                        }
                    }
                    jlVar.h = str;
                    continue;
                    break;
                case REPORTED_IDS:
                    jlVar.h();
                    continue;
                default:
                    continue;
            }
            km.a(4, b, "Exception during id fetch:" + jlVar.f + ", " + e);
        }
        ki.a().a(new jm());
    }
}
