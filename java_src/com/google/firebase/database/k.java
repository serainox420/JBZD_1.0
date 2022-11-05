package com.google.firebase.database;

import com.google.android.gms.internal.zzbph;
import com.google.android.gms.internal.zzbpj;
import com.google.android.gms.internal.zzbrb;
import com.google.android.gms.internal.zzbrc;
/* loaded from: classes2.dex */
public class k {
    static final /* synthetic */ boolean d;

    /* renamed from: a  reason: collision with root package name */
    protected final zzbpj f3576a;
    protected final zzbph b;
    protected final zzbrb c = zzbrb.zzcie;
    private final boolean e = false;

    static {
        d = !k.class.desiredAssertionStatus();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(zzbpj zzbpjVar, zzbph zzbphVar) {
        this.f3576a = zzbpjVar;
        this.b = zzbphVar;
    }

    public zzbph c() {
        return this.b;
    }

    public zzbrc d() {
        return new zzbrc(this.b, this.c);
    }
}
