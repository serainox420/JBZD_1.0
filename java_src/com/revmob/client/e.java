package com.revmob.client;

import com.revmob.internal.u;
import com.revmob.internal.w;
import org.apache.http.HttpResponse;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class e extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ String f4790a;
    private /* synthetic */ String b;
    private /* synthetic */ f c;
    private /* synthetic */ RevMobClient d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(RevMobClient revMobClient, String str, String str2, f fVar) {
        this.d = revMobClient;
        this.f4790a = str;
        this.b = str2;
        this.c = fVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        com.revmob.internal.c cVar = new com.revmob.internal.c();
        HttpResponse a2 = cVar.a(this.f4790a, this.b);
        if (this.c != null) {
            this.c.c = cVar;
        }
        try {
            this.d.a(a2, this.c);
        } catch (JSONException e) {
            u.a(e, cVar.c, w.c, this.f4790a, "serverRequest");
            e.printStackTrace();
        }
    }
}
