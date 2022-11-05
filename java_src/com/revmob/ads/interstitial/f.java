package com.revmob.ads.interstitial;

import java.util.ArrayList;
/* loaded from: classes3.dex */
final class f extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ String f4770a;
    private /* synthetic */ a b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(a aVar, String str) {
        this.b = aVar;
        this.f4770a = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        for (int i = 0; i < this.b.f4760a.u().size(); i++) {
            ArrayList arrayList = (ArrayList) this.b.f4760a.u().get(i);
            if (arrayList.get(0) == this.f4770a) {
                com.revmob.internal.c cVar = new com.revmob.internal.c();
                for (int i2 = 1; i2 < arrayList.size(); i2++) {
                    String str = (String) arrayList.get(i2);
                    if (this.b.m > 0.0d) {
                        str = str.concat("&videoPosition=").concat(String.valueOf(String.format("%.2f", Double.valueOf(this.b.m))));
                    }
                    cVar.a(str, com.revmob.a.e.a());
                }
            }
        }
    }
}
