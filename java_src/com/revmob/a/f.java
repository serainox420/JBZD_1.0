package com.revmob.a;

import com.revmob.client.RevMobClient;
import com.revmob.internal.RMLog;
import com.revmob.internal.u;
import com.revmob.internal.w;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class f implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        String str;
        com.revmob.client.f fVar;
        String str2;
        com.revmob.client.f fVar2;
        try {
            b a2 = a.a(e.f4738a);
            if (a2 != null) {
                boolean unused = e.m = a2.b();
                String unused2 = e.h = a2.a();
            } else {
                String unused3 = e.h = null;
            }
            RevMobClient a3 = RevMobClient.a();
            str2 = e.i;
            String a4 = e.a();
            fVar2 = e.j;
            a3.a(str2, a4, fVar2, e.b);
        } catch (Exception e) {
            RMLog.e("Error with Google Play Services: " + e.getMessage());
            u.a(e, null, w.c, null, "loadAdvertisingInfo1");
            e.printStackTrace();
            RevMobClient a5 = RevMobClient.a();
            str = e.i;
            String a6 = e.a();
            fVar = e.j;
            a5.a(str, a6, fVar, e.b);
        }
    }
}
