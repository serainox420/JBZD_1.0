package com.flurry.sdk;

import com.flurry.sdk.ks;
import com.flurry.sdk.ku;
import java.util.List;
/* loaded from: classes2.dex */
public final class ew extends eq {

    /* loaded from: classes2.dex */
    public interface a {
        void a(int i, String str);

        void a(List<String> list);
    }

    public final void a(final a aVar) {
        ks<?, ?> ksVar = new ks<>();
        ksVar.f = ef.c();
        ksVar.g = ku.a.kGet;
        ksVar.w = 20000;
        ksVar.a("Content-Type", er.f());
        ksVar.d = new lh();
        a(ksVar, ed.c());
        ksVar.f2978a = new ks.a<Void, String>() { // from class: com.flurry.sdk.ew.1
            @Override // com.flurry.sdk.ks.a
            public final /* synthetic */ void a(ks<Void, String> ksVar2, String str) {
                String str2 = str;
                if (str2 != null) {
                    int a2 = eg.a(str2);
                    if (a2 == 200) {
                        List<String> b = eg.b(str2);
                        if (!b.isEmpty()) {
                            aVar.a(b);
                            return;
                        } else {
                            aVar.a(-1, str2);
                            return;
                        }
                    }
                    aVar.a(a2, str2);
                } else if (ksVar2.p == 401) {
                    aVar.a(401, "Not Authorized");
                } else {
                    aVar.a(-1, "Invalid user info");
                }
            }
        };
        jw.a().a((Object) this, (ew) ksVar);
    }

    @Override // com.flurry.sdk.eq
    protected final ku.a a() {
        return ku.a.kGet;
    }

    @Override // com.flurry.sdk.eq
    protected final String b() {
        return ef.c();
    }

    @Override // com.flurry.sdk.eq
    public final void c() {
        jw.a().a(this);
    }
}
