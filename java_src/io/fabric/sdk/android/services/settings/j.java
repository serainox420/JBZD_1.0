package io.fabric.sdk.android.services.settings;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DefaultSettingsController.java */
/* loaded from: classes3.dex */
public class j implements r {

    /* renamed from: a  reason: collision with root package name */
    private final v f5718a;
    private final u b;
    private final io.fabric.sdk.android.services.common.k c;
    private final g d;
    private final w e;
    private final io.fabric.sdk.android.h f;
    private final io.fabric.sdk.android.services.c.c g;

    public j(io.fabric.sdk.android.h hVar, v vVar, io.fabric.sdk.android.services.common.k kVar, u uVar, g gVar, w wVar) {
        this.f = hVar;
        this.f5718a = vVar;
        this.c = kVar;
        this.b = uVar;
        this.d = gVar;
        this.e = wVar;
        this.g = new io.fabric.sdk.android.services.c.d(this.f);
    }

    @Override // io.fabric.sdk.android.services.settings.r
    public s a() {
        return a(SettingsCacheBehavior.USE_CACHE);
    }

    @Override // io.fabric.sdk.android.services.settings.r
    public s a(SettingsCacheBehavior settingsCacheBehavior) {
        s sVar;
        Exception e;
        s sVar2 = null;
        try {
            if (!io.fabric.sdk.android.c.i() && !d()) {
                sVar2 = b(settingsCacheBehavior);
            }
            if (sVar2 == null) {
                try {
                    JSONObject a2 = this.e.a(this.f5718a);
                    if (a2 != null) {
                        sVar2 = this.b.a(this.c, a2);
                        this.d.a(sVar2.g, a2);
                        a(a2, "Loaded settings: ");
                        a(b());
                    }
                } catch (Exception e2) {
                    sVar = sVar2;
                    e = e2;
                    io.fabric.sdk.android.c.h().e("Fabric", "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved.", e);
                    return sVar;
                }
            }
            sVar = sVar2;
            if (sVar == null) {
                try {
                    return b(SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION);
                } catch (Exception e3) {
                    e = e3;
                    io.fabric.sdk.android.c.h().e("Fabric", "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved.", e);
                    return sVar;
                }
            }
            return sVar;
        } catch (Exception e4) {
            sVar = null;
            e = e4;
        }
    }

    private s b(SettingsCacheBehavior settingsCacheBehavior) {
        s sVar = null;
        try {
            if (!SettingsCacheBehavior.SKIP_CACHE_LOOKUP.equals(settingsCacheBehavior)) {
                JSONObject a2 = this.d.a();
                if (a2 != null) {
                    s a3 = this.b.a(this.c, a2);
                    if (a3 != null) {
                        a(a2, "Loaded cached settings: ");
                        long a4 = this.c.a();
                        if (SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION.equals(settingsCacheBehavior) || !a3.a(a4)) {
                            try {
                                io.fabric.sdk.android.c.h().a("Fabric", "Returning cached settings.");
                                sVar = a3;
                            } catch (Exception e) {
                                sVar = a3;
                                e = e;
                                io.fabric.sdk.android.c.h().e("Fabric", "Failed to get cached settings", e);
                                return sVar;
                            }
                        } else {
                            io.fabric.sdk.android.c.h().a("Fabric", "Cached settings have expired.");
                        }
                    } else {
                        io.fabric.sdk.android.c.h().e("Fabric", "Failed to transform cached settings data.", null);
                    }
                } else {
                    io.fabric.sdk.android.c.h().a("Fabric", "No cached settings data found.");
                }
            }
        } catch (Exception e2) {
            e = e2;
        }
        return sVar;
    }

    private void a(JSONObject jSONObject, String str) throws JSONException {
        io.fabric.sdk.android.c.h().a("Fabric", str + jSONObject.toString());
    }

    String b() {
        return io.fabric.sdk.android.services.common.i.a(io.fabric.sdk.android.services.common.i.m(this.f.getContext()));
    }

    String c() {
        return this.g.a().getString("existing_instance_identifier", "");
    }

    @SuppressLint({"CommitPrefEdits"})
    boolean a(String str) {
        SharedPreferences.Editor b = this.g.b();
        b.putString("existing_instance_identifier", str);
        return this.g.a(b);
    }

    boolean d() {
        return !c().equals(b());
    }
}
