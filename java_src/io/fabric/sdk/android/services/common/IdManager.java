package io.fabric.sdk.android.services.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.provider.Settings;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;
/* loaded from: classes3.dex */
public class IdManager {
    private static final Pattern d = Pattern.compile("[^\\p{Alnum}]");
    private static final String e = Pattern.quote("/");

    /* renamed from: a  reason: collision with root package name */
    c f5660a;
    b b;
    boolean c;
    private final ReentrantLock f = new ReentrantLock();
    private final n g;
    private final boolean h;
    private final boolean i;
    private final Context j;
    private final String k;
    private final String l;
    private final Collection<io.fabric.sdk.android.h> m;

    /* loaded from: classes3.dex */
    public enum DeviceIdentifierType {
        WIFI_MAC_ADDRESS(1),
        BLUETOOTH_MAC_ADDRESS(2),
        FONT_TOKEN(53),
        ANDROID_ID(100),
        ANDROID_DEVICE_ID(101),
        ANDROID_SERIAL(102),
        ANDROID_ADVERTISING_ID(103);
        
        public final int protobufIndex;

        DeviceIdentifierType(int i) {
            this.protobufIndex = i;
        }
    }

    public IdManager(Context context, String str, String str2, Collection<io.fabric.sdk.android.h> collection) {
        if (context == null) {
            throw new IllegalArgumentException("appContext must not be null");
        }
        if (str == null) {
            throw new IllegalArgumentException("appIdentifier must not be null");
        }
        if (collection == null) {
            throw new IllegalArgumentException("kits must not be null");
        }
        this.j = context;
        this.k = str;
        this.l = str2;
        this.m = collection;
        this.g = new n();
        this.f5660a = new c(context);
        this.h = i.a(context, "com.crashlytics.CollectDeviceIdentifiers", true);
        if (!this.h) {
            io.fabric.sdk.android.c.h().a("Fabric", "Device ID collection disabled for " + context.getPackageName());
        }
        this.i = i.a(context, "com.crashlytics.CollectUserIdentifiers", true);
        if (!this.i) {
            io.fabric.sdk.android.c.h().a("Fabric", "User information collection disabled for " + context.getPackageName());
        }
    }

    public boolean a() {
        return this.i;
    }

    private String a(String str) {
        if (str == null) {
            return null;
        }
        return d.matcher(str).replaceAll("").toLowerCase(Locale.US);
    }

    public String b() {
        String str = this.l;
        if (str == null) {
            SharedPreferences a2 = i.a(this.j);
            String string = a2.getString("crashlytics.installation.id", null);
            if (string == null) {
                return a(a2);
            }
            return string;
        }
        return str;
    }

    public String c() {
        return this.k;
    }

    public String d() {
        return e() + "/" + f();
    }

    public String e() {
        return b(Build.VERSION.RELEASE);
    }

    public String f() {
        return b(Build.VERSION.INCREMENTAL);
    }

    public String g() {
        return String.format(Locale.US, "%s/%s", b(Build.MANUFACTURER), b(Build.MODEL));
    }

    private String b(String str) {
        return str.replaceAll(e, "");
    }

    public String h() {
        if (!this.h) {
            return "";
        }
        String n = n();
        if (n == null) {
            SharedPreferences a2 = i.a(this.j);
            String string = a2.getString("crashlytics.installation.id", null);
            if (string == null) {
                return a(a2);
            }
            return string;
        }
        return n;
    }

    private String a(SharedPreferences sharedPreferences) {
        this.f.lock();
        try {
            String string = sharedPreferences.getString("crashlytics.installation.id", null);
            if (string == null) {
                string = a(UUID.randomUUID().toString());
                sharedPreferences.edit().putString("crashlytics.installation.id", string).commit();
            }
            return string;
        } finally {
            this.f.unlock();
        }
    }

    public Map<DeviceIdentifierType, String> i() {
        HashMap hashMap = new HashMap();
        for (io.fabric.sdk.android.h hVar : this.m) {
            if (hVar instanceof l) {
                for (Map.Entry<DeviceIdentifierType, String> entry : ((l) hVar).getDeviceIdentifiers().entrySet()) {
                    a(hashMap, entry.getKey(), entry.getValue());
                }
            }
        }
        a(hashMap, DeviceIdentifierType.ANDROID_ID, n());
        a(hashMap, DeviceIdentifierType.ANDROID_ADVERTISING_ID, m());
        return Collections.unmodifiableMap(hashMap);
    }

    public String j() {
        return this.g.a(this.j);
    }

    synchronized b k() {
        if (!this.c) {
            this.b = this.f5660a.a();
            this.c = true;
        }
        return this.b;
    }

    public Boolean l() {
        b k;
        if (!this.h || (k = k()) == null) {
            return null;
        }
        return Boolean.valueOf(k.b);
    }

    public String m() {
        b k;
        if (!this.h || (k = k()) == null) {
            return null;
        }
        return k.f5662a;
    }

    private void a(Map<DeviceIdentifierType, String> map, DeviceIdentifierType deviceIdentifierType, String str) {
        if (str != null) {
            map.put(deviceIdentifierType, str);
        }
    }

    public String n() {
        if (!this.h) {
            return null;
        }
        String string = Settings.Secure.getString(this.j.getContentResolver(), "android_id");
        if ("9774d56d682e549c".equals(string)) {
            return null;
        }
        return a(string);
    }
}
