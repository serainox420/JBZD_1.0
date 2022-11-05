package io.fabric.sdk.android;

import android.util.Log;
/* compiled from: DefaultLogger.java */
/* loaded from: classes3.dex */
public class b implements k {

    /* renamed from: a  reason: collision with root package name */
    private int f5641a;

    public b(int i) {
        this.f5641a = i;
    }

    public b() {
        this.f5641a = 4;
    }

    @Override // io.fabric.sdk.android.k
    public boolean a(String str, int i) {
        return this.f5641a <= i;
    }

    @Override // io.fabric.sdk.android.k
    public void a(String str, String str2, Throwable th) {
        if (a(str, 3)) {
            Log.d(str, str2, th);
        }
    }

    public void b(String str, String str2, Throwable th) {
        if (a(str, 2)) {
            Log.v(str, str2, th);
        }
    }

    public void c(String str, String str2, Throwable th) {
        if (a(str, 4)) {
            Log.i(str, str2, th);
        }
    }

    @Override // io.fabric.sdk.android.k
    public void d(String str, String str2, Throwable th) {
        if (a(str, 5)) {
            Log.w(str, str2, th);
        }
    }

    @Override // io.fabric.sdk.android.k
    public void e(String str, String str2, Throwable th) {
        if (a(str, 6)) {
            Log.e(str, str2, th);
        }
    }

    @Override // io.fabric.sdk.android.k
    public void a(String str, String str2) {
        a(str, str2, (Throwable) null);
    }

    @Override // io.fabric.sdk.android.k
    public void b(String str, String str2) {
        b(str, str2, null);
    }

    @Override // io.fabric.sdk.android.k
    public void c(String str, String str2) {
        c(str, str2, null);
    }

    @Override // io.fabric.sdk.android.k
    public void d(String str, String str2) {
        d(str, str2, null);
    }

    @Override // io.fabric.sdk.android.k
    public void e(String str, String str2) {
        e(str, str2, null);
    }

    @Override // io.fabric.sdk.android.k
    public void a(int i, String str, String str2) {
        a(i, str, str2, false);
    }

    @Override // io.fabric.sdk.android.k
    public void a(int i, String str, String str2, boolean z) {
        if (z || a(str, i)) {
            Log.println(i, str, str2);
        }
    }
}
