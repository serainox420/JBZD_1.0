package io.fabric.sdk.android.services.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
/* compiled from: AdvertisingInfoProvider.java */
/* loaded from: classes3.dex */
class c {

    /* renamed from: a  reason: collision with root package name */
    private final Context f5663a;
    private final io.fabric.sdk.android.services.c.c b;

    public c(Context context) {
        this.f5663a = context.getApplicationContext();
        this.b = new io.fabric.sdk.android.services.c.d(context, "TwitterAdvertisingInfoPreferences");
    }

    public b a() {
        b b = b();
        if (c(b)) {
            io.fabric.sdk.android.c.h().a("Fabric", "Using AdvertisingInfo from Preference Store");
            a(b);
            return b;
        }
        b e = e();
        b(e);
        return e;
    }

    private void a(final b bVar) {
        new Thread(new h() { // from class: io.fabric.sdk.android.services.common.c.1
            @Override // io.fabric.sdk.android.services.common.h
            public void onRun() {
                b e = c.this.e();
                if (!bVar.equals(e)) {
                    io.fabric.sdk.android.c.h().a("Fabric", "Asychronously getting Advertising Info and storing it to preferences");
                    c.this.b(e);
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CommitPrefEdits"})
    public void b(b bVar) {
        if (c(bVar)) {
            this.b.a(this.b.b().putString("advertising_id", bVar.f5662a).putBoolean("limit_ad_tracking_enabled", bVar.b));
        } else {
            this.b.a(this.b.b().remove("advertising_id").remove("limit_ad_tracking_enabled"));
        }
    }

    protected b b() {
        return new b(this.b.a().getString("advertising_id", ""), this.b.a().getBoolean("limit_ad_tracking_enabled", false));
    }

    public f c() {
        return new d(this.f5663a);
    }

    public f d() {
        return new e(this.f5663a);
    }

    private boolean c(b bVar) {
        return bVar != null && !TextUtils.isEmpty(bVar.f5662a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b e() {
        b a2 = c().a();
        if (!c(a2)) {
            a2 = d().a();
            if (!c(a2)) {
                io.fabric.sdk.android.c.h().a("Fabric", "AdvertisingInfo not present");
            } else {
                io.fabric.sdk.android.c.h().a("Fabric", "Using AdvertisingInfo from Service Provider");
            }
        } else {
            io.fabric.sdk.android.c.h().a("Fabric", "Using AdvertisingInfo from Reflection Provider");
        }
        return a2;
    }
}
