package com.google.firebase.auth;

import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzbmx;
/* loaded from: classes2.dex */
public class g extends a {

    /* renamed from: a  reason: collision with root package name */
    private final String f3544a;
    private final String b;

    public static zzbmx a(g gVar) {
        zzac.zzw(gVar);
        return new zzbmx(gVar.c(), gVar.b(), gVar.a(), null, null);
    }

    @Override // com.google.firebase.auth.a
    public String a() {
        return "google.com";
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.f3544a;
    }
}
