package com.revmob.client;

import com.revmob.internal.RMLog;
/* loaded from: classes3.dex */
public final class b extends f {

    /* renamed from: a  reason: collision with root package name */
    private String f4787a;
    private String b;

    public b(String str, String str2) {
        this.f4787a = str;
        this.b = str2;
    }

    @Override // com.revmob.client.f
    public final void a(String str) {
        com.revmob.a.e.a(this.f4787a, this.b);
        RMLog.d("Impression reported.");
    }

    @Override // com.revmob.client.f
    public final void b(String str) {
        RMLog.w("Failed to report impression.");
    }
}
