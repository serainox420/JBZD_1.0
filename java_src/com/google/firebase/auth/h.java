package com.google.firebase.auth;

import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzbmx;
/* loaded from: classes2.dex */
public class h extends a {

    /* renamed from: a  reason: collision with root package name */
    private String f3545a;
    private String b;

    public static zzbmx a(h hVar) {
        zzac.zzw(hVar);
        return new zzbmx(null, hVar.b(), hVar.a(), null, hVar.c());
    }

    @Override // com.google.firebase.auth.a
    public String a() {
        return "twitter.com";
    }

    public String b() {
        return this.f3545a;
    }

    public String c() {
        return this.b;
    }
}
