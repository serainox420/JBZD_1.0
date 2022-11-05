package com.flurry.sdk;

import com.flurry.sdk.ks;
import com.flurry.sdk.ku;
/* loaded from: classes2.dex */
public final class em extends eq {

    /* loaded from: classes2.dex */
    public interface a {
        void a(el elVar);

        void a(String str);
    }

    public final void a(el elVar, String str, final a aVar) {
        ks<?, ?> ksVar = new ks<>();
        ksVar.f = ef.a();
        ksVar.g = ku.a.kPost;
        ksVar.w = 20000;
        ksVar.a("Content-Type", er.f());
        ksVar.d = new lh();
        a("oauth_verifier", str);
        a(ksVar, elVar);
        ksVar.f2978a = new ks.a<String, String>() { // from class: com.flurry.sdk.em.1
            @Override // com.flurry.sdk.ks.a
            public final /* bridge */ /* synthetic */ void a(ks<String, String> ksVar2, String str2) {
                el a2 = em.a(str2);
                if (a2 != null) {
                    aVar.a(a2);
                } else {
                    aVar.a("Access token failed");
                }
            }
        };
        jw.a().a((Object) this, (em) ksVar);
    }

    @Override // com.flurry.sdk.eq
    protected final ku.a a() {
        return ku.a.kPost;
    }

    @Override // com.flurry.sdk.eq
    protected final String b() {
        return ef.a();
    }

    @Override // com.flurry.sdk.eq
    public final void c() {
        jw.a().a(this);
    }
}
