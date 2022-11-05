package com.revmob.internal;

import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class v extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ Throwable f4814a;
    private /* synthetic */ String b;
    private /* synthetic */ Enum c;
    private /* synthetic */ String d;
    private /* synthetic */ String e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(Throwable th, String str, Enum r3, String str2, String str3) {
        this.f4814a = th;
        this.b = str;
        this.c = r3;
        this.d = str2;
        this.e = str3;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            u.b(this.f4814a, this.b, this.c, this.d, this.e);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}
