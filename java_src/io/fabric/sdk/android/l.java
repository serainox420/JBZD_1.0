package io.fabric.sdk.android;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.facebook.appevents.AppEventsConstants;
import io.fabric.sdk.android.services.common.DeliveryMechanism;
import io.fabric.sdk.android.services.settings.n;
import io.fabric.sdk.android.services.settings.q;
import io.fabric.sdk.android.services.settings.s;
import io.fabric.sdk.android.services.settings.x;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Onboarding.java */
/* loaded from: classes3.dex */
public class l extends h<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    private final io.fabric.sdk.android.services.network.c f5650a = new io.fabric.sdk.android.services.network.b();
    private PackageManager b;
    private String c;
    private PackageInfo d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private final Future<Map<String, j>> j;
    private final Collection<h> k;

    public l(Future<Map<String, j>> future, Collection<h> collection) {
        this.j = future;
        this.k = collection;
    }

    @Override // io.fabric.sdk.android.h
    public String getVersion() {
        return "1.3.16.dev";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.fabric.sdk.android.h
    public boolean onPreExecute() {
        boolean z = false;
        try {
            this.g = getIdManager().j();
            this.b = getContext().getPackageManager();
            this.c = getContext().getPackageName();
            this.d = this.b.getPackageInfo(this.c, 0);
            this.e = Integer.toString(this.d.versionCode);
            this.f = this.d.versionName == null ? "0.0" : this.d.versionName;
            this.h = this.b.getApplicationLabel(getContext().getApplicationInfo()).toString();
            this.i = Integer.toString(getContext().getApplicationInfo().targetSdkVersion);
            z = true;
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            c.h().e("Fabric", "Failed init", e);
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.fabric.sdk.android.h
    /* renamed from: a */
    public Boolean mo38doInBackground() {
        Map<String, j> hashMap;
        boolean a2;
        String k = io.fabric.sdk.android.services.common.i.k(getContext());
        s c = c();
        if (c != null) {
            try {
                if (this.j != null) {
                    hashMap = this.j.get();
                } else {
                    hashMap = new HashMap<>();
                }
                a2 = a(k, c.f5725a, a(hashMap, this.k).values());
            } catch (Exception e) {
                c.h().e("Fabric", "Error performing auto configuration.", e);
            }
            return Boolean.valueOf(a2);
        }
        a2 = false;
        return Boolean.valueOf(a2);
    }

    private s c() {
        try {
            q.a().a(this, this.idManager, this.f5650a, this.e, this.f, b()).c();
            return q.a().b();
        } catch (Exception e) {
            c.h().e("Fabric", "Error dealing with settings", e);
            return null;
        }
    }

    Map<String, j> a(Map<String, j> map, Collection<h> collection) {
        for (h hVar : collection) {
            if (!map.containsKey(hVar.getIdentifier())) {
                map.put(hVar.getIdentifier(), new j(hVar.getIdentifier(), hVar.getVersion(), "binary"));
            }
        }
        return map;
    }

    @Override // io.fabric.sdk.android.h
    public String getIdentifier() {
        return "io.fabric.sdk.android:fabric";
    }

    private boolean a(String str, io.fabric.sdk.android.services.settings.e eVar, Collection<j> collection) {
        if ("new".equals(eVar.b)) {
            if (b(str, eVar, collection)) {
                return q.a().d();
            }
            c.h().e("Fabric", "Failed to create app with Crashlytics service.", null);
            return false;
        } else if ("configured".equals(eVar.b)) {
            return q.a().d();
        } else {
            if (!eVar.e) {
                return true;
            }
            c.h().a("Fabric", "Server says an update is required - forcing a full App update.");
            c(str, eVar, collection);
            return true;
        }
    }

    private boolean b(String str, io.fabric.sdk.android.services.settings.e eVar, Collection<j> collection) {
        return new io.fabric.sdk.android.services.settings.h(this, b(), eVar.c, this.f5650a).a(a(n.a(getContext(), str), collection));
    }

    private boolean c(String str, io.fabric.sdk.android.services.settings.e eVar, Collection<j> collection) {
        return a(eVar, n.a(getContext(), str), collection);
    }

    private boolean a(io.fabric.sdk.android.services.settings.e eVar, n nVar, Collection<j> collection) {
        return new x(this, b(), eVar.c, this.f5650a).a(a(nVar, collection));
    }

    private io.fabric.sdk.android.services.settings.d a(n nVar, Collection<j> collection) {
        Context context = getContext();
        return new io.fabric.sdk.android.services.settings.d(new io.fabric.sdk.android.services.common.g().a(context), getIdManager().c(), this.f, this.e, io.fabric.sdk.android.services.common.i.a(io.fabric.sdk.android.services.common.i.m(context)), this.h, DeliveryMechanism.determineFrom(this.g).getId(), this.i, AppEventsConstants.EVENT_PARAM_VALUE_NO, nVar, collection);
    }

    String b() {
        return io.fabric.sdk.android.services.common.i.b(getContext(), "com.crashlytics.ApiEndpoint");
    }
}
