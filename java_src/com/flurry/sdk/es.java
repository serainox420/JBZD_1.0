package com.flurry.sdk;

import android.text.TextUtils;
import com.flurry.sdk.ks;
import com.flurry.sdk.ku;
/* loaded from: classes2.dex */
public final class es extends eq {

    /* loaded from: classes2.dex */
    public interface a {
        void a(el elVar);

        void a(String str);
    }

    public final void a(final a aVar, String str) {
        ks<?, ?> ksVar = new ks<>();
        if (!TextUtils.isEmpty(str)) {
            ksVar.f = String.format(ef.b() + "?oauth_callback=%s", str);
        } else {
            ksVar.f = ef.b();
        }
        ksVar.g = ku.a.kPost;
        ksVar.w = 20000;
        ksVar.a("Content-Type", er.f());
        ksVar.d = new lh();
        ksVar.c = new lh();
        a(ksVar, f2624a);
        ksVar.f2978a = new ks.a<String, String>() { // from class: com.flurry.sdk.es.1
            @Override // com.flurry.sdk.ks.a
            public final /* bridge */ /* synthetic */ void a(ks<String, String> ksVar2, String str2) {
                String str3 = str2;
                if (str3 != null) {
                    el a2 = es.a(str3);
                    if (a2 != null && !a2.a()) {
                        aVar.a(a2);
                    } else {
                        aVar.a(str3);
                    }
                } else if (ksVar2.p == 401) {
                    aVar.a("Not Authorized");
                } else {
                    aVar.a("Request token failed.");
                }
            }
        };
        jw.a().a((Object) this, (es) ksVar);
    }

    @Override // com.flurry.sdk.eq
    protected final ku.a a() {
        return ku.a.kPost;
    }

    @Override // com.flurry.sdk.eq
    protected final String b() {
        return ef.b();
    }

    @Override // com.flurry.sdk.eq
    public final void c() {
        jw.a().a(this);
    }
}
