package com.google.firebase.auth;

import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzbmx;
/* loaded from: classes2.dex */
public class c extends a {

    /* renamed from: a  reason: collision with root package name */
    private final String f3540a;

    public static zzbmx a(c cVar) {
        zzac.zzw(cVar);
        return new zzbmx(null, cVar.b(), cVar.a(), null, null);
    }

    @Override // com.google.firebase.auth.a
    public String a() {
        return "facebook.com";
    }

    public String b() {
        return this.f3540a;
    }
}
