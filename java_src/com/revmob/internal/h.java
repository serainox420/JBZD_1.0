package com.revmob.internal;
/* loaded from: classes3.dex */
final class h extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ String f4803a;
    private /* synthetic */ String b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(String str, String str2) {
        this.f4803a = str;
        this.b = str2;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        new c().a(this.f4803a, this.b);
    }
}
