package com.google.firebase.database;

import com.google.android.gms.internal.zzbph;
import com.google.android.gms.internal.zzbpo;
import com.google.android.gms.internal.zzbpw;
import com.google.android.gms.internal.zzbrq;
import com.google.android.gms.internal.zzbsc;
/* loaded from: classes2.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private final zzbpo f3575a;
    private final zzbph b;

    private i(zzbpo zzbpoVar, zzbph zzbphVar) {
        this.f3575a = zzbpoVar;
        this.b = zzbphVar;
        zzbpw.zza(this.b, b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(zzbsc zzbscVar) {
        this(new zzbpo(zzbscVar), new zzbph(""));
    }

    zzbsc a() {
        return this.f3575a.zzq(this.b);
    }

    public Object b() {
        return a().getValue();
    }

    public boolean equals(Object obj) {
        return (obj instanceof i) && this.f3575a.equals(((i) obj).f3575a) && this.b.equals(((i) obj).b);
    }

    public String toString() {
        zzbrq zzYS = this.b.zzYS();
        String asString = zzYS != null ? zzYS.asString() : "<none>";
        String valueOf = String.valueOf(this.f3575a.zzZf().getValue(true));
        return new StringBuilder(String.valueOf(asString).length() + 32 + String.valueOf(valueOf).length()).append("MutableData { key = ").append(asString).append(", value = ").append(valueOf).append(" }").toString();
    }
}
