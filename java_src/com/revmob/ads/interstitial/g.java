package com.revmob.ads.interstitial;

import java.util.ArrayList;
/* loaded from: classes3.dex */
final class g extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ String f4771a;
    private /* synthetic */ a b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(a aVar, String str) {
        this.b = aVar;
        this.f4771a = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        int size = this.b.f4760a.v().size();
        if (size > 0) {
            for (int i = 0; i < size; i++) {
                ArrayList arrayList = (ArrayList) this.b.f4760a.v().get(i);
                if (arrayList.get(0) == this.f4771a) {
                    com.revmob.internal.c cVar = new com.revmob.internal.c();
                    if (arrayList.size() > 0) {
                        int i2 = 1;
                        while (true) {
                            int i3 = i2;
                            if (i3 < arrayList.size()) {
                                cVar.b((String) arrayList.get(i3));
                                i2 = i3 + 1;
                            }
                        }
                    }
                }
            }
        }
    }
}
