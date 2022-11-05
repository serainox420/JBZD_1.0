package com.google.firebase.database;

import com.google.android.gms.internal.zzbrx;
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final zzbrx f3549a;
    private final d b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(d dVar, zzbrx zzbrxVar) {
        this.f3549a = zzbrxVar;
        this.b = dVar;
    }

    public d a() {
        return this.b;
    }

    public Object a(boolean z) {
        return this.f3549a.zzWI().getValue(z);
    }

    public String b() {
        return this.b.b();
    }

    public String toString() {
        String valueOf = String.valueOf(this.b.b());
        String valueOf2 = String.valueOf(this.f3549a.zzWI().getValue(true));
        return new StringBuilder(String.valueOf(valueOf).length() + 33 + String.valueOf(valueOf2).length()).append("DataSnapshot { key = ").append(valueOf).append(", value = ").append(valueOf2).append(" }").toString();
    }
}
