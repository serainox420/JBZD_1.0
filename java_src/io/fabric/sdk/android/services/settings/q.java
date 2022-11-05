package io.fabric.sdk.android.services.settings;

import android.content.Context;
import io.fabric.sdk.android.services.common.DeliveryMechanism;
import io.fabric.sdk.android.services.common.IdManager;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: Settings.java */
/* loaded from: classes3.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<s> f5723a;
    private final CountDownLatch b;
    private r c;
    private boolean d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Settings.java */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final q f5724a = new q();
    }

    public static q a() {
        return a.f5724a;
    }

    private q() {
        this.f5723a = new AtomicReference<>();
        this.b = new CountDownLatch(1);
        this.d = false;
    }

    public synchronized q a(io.fabric.sdk.android.h hVar, IdManager idManager, io.fabric.sdk.android.services.network.c cVar, String str, String str2, String str3) {
        q qVar;
        if (this.d) {
            qVar = this;
        } else {
            if (this.c == null) {
                Context context = hVar.getContext();
                String c = idManager.c();
                String a2 = new io.fabric.sdk.android.services.common.g().a(context);
                String j = idManager.j();
                this.c = new j(hVar, new v(a2, idManager.g(), idManager.f(), idManager.e(), idManager.m(), idManager.b(), idManager.n(), io.fabric.sdk.android.services.common.i.a(io.fabric.sdk.android.services.common.i.m(context)), str2, str, DeliveryMechanism.determineFrom(j).getId(), io.fabric.sdk.android.services.common.i.k(context)), new io.fabric.sdk.android.services.common.q(), new k(), new i(hVar), new l(hVar, str3, String.format(Locale.US, "https://settings.crashlytics.com/spi/v2/platforms/android/apps/%s/settings", c), cVar));
            }
            this.d = true;
            qVar = this;
        }
        return qVar;
    }

    public s b() {
        try {
            this.b.await();
            return this.f5723a.get();
        } catch (InterruptedException e) {
            io.fabric.sdk.android.c.h().e("Fabric", "Interrupted while waiting for settings data.");
            return null;
        }
    }

    public synchronized boolean c() {
        s a2;
        a2 = this.c.a();
        a(a2);
        return a2 != null;
    }

    public synchronized boolean d() {
        s a2;
        a2 = this.c.a(SettingsCacheBehavior.SKIP_CACHE_LOOKUP);
        a(a2);
        if (a2 == null) {
            io.fabric.sdk.android.c.h().e("Fabric", "Failed to force reload of settings from Crashlytics.", null);
        }
        return a2 != null;
    }

    private void a(s sVar) {
        this.f5723a.set(sVar);
        this.b.countDown();
    }
}
