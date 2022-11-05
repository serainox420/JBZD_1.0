package com.google.ads.mediation.customevent;

import android.app.Activity;
import android.view.View;
import com.google.ads.AdRequest;
import com.google.ads.mediation.g;
import com.google.android.gms.ads.mediation.customevent.CustomEventExtras;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.zzqf;
@KeepName
/* loaded from: classes2.dex */
public final class CustomEventAdapter implements com.google.ads.mediation.d<CustomEventExtras, f>, com.google.ads.mediation.f<CustomEventExtras, f> {

    /* renamed from: a  reason: collision with root package name */
    com.google.ads.mediation.customevent.b f3139a;
    d b;
    private View c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class a implements c {

        /* renamed from: a  reason: collision with root package name */
        private final CustomEventAdapter f3140a;
        private final com.google.ads.mediation.e b;

        public a(CustomEventAdapter customEventAdapter, com.google.ads.mediation.e eVar) {
            this.f3140a = customEventAdapter;
            this.b = eVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements e {
        private final CustomEventAdapter b;
        private final g c;

        public b(CustomEventAdapter customEventAdapter, g gVar) {
            this.b = customEventAdapter;
            this.c = gVar;
        }
    }

    private static <T> T a(String str) {
        try {
            return (T) Class.forName(str).newInstance();
        } catch (Throwable th) {
            String valueOf = String.valueOf(th.getMessage());
            zzqf.zzbh(new StringBuilder(String.valueOf(str).length() + 46 + String.valueOf(valueOf).length()).append("Could not instantiate custom event adapter: ").append(str).append(". ").append(valueOf).toString());
            return null;
        }
    }

    b a(g gVar) {
        return new b(this, gVar);
    }

    @Override // com.google.ads.mediation.c
    public void a() {
        if (this.f3139a != null) {
            this.f3139a.a();
        }
        if (this.b != null) {
            this.b.a();
        }
    }

    @Override // com.google.ads.mediation.d
    public void a(com.google.ads.mediation.e eVar, Activity activity, f fVar, com.google.ads.a aVar, com.google.ads.mediation.b bVar, CustomEventExtras customEventExtras) {
        this.f3139a = (com.google.ads.mediation.customevent.b) a(fVar.b);
        if (this.f3139a == null) {
            eVar.onFailedToReceiveAd(this, AdRequest.ErrorCode.INTERNAL_ERROR);
        } else {
            this.f3139a.a(new a(this, eVar), activity, fVar.f3142a, fVar.c, aVar, bVar, customEventExtras == null ? null : customEventExtras.getExtra(fVar.f3142a));
        }
    }

    @Override // com.google.ads.mediation.f
    public void a(g gVar, Activity activity, f fVar, com.google.ads.mediation.b bVar, CustomEventExtras customEventExtras) {
        this.b = (d) a(fVar.b);
        if (this.b == null) {
            gVar.onFailedToReceiveAd(this, AdRequest.ErrorCode.INTERNAL_ERROR);
        } else {
            this.b.a(a(gVar), activity, fVar.f3142a, fVar.c, bVar, customEventExtras == null ? null : customEventExtras.getExtra(fVar.f3142a));
        }
    }

    @Override // com.google.ads.mediation.c
    public Class<CustomEventExtras> b() {
        return CustomEventExtras.class;
    }

    @Override // com.google.ads.mediation.c
    public Class<f> c() {
        return f.class;
    }

    @Override // com.google.ads.mediation.d
    public View d() {
        return this.c;
    }

    @Override // com.google.ads.mediation.f
    public void e() {
        this.b.b();
    }
}
