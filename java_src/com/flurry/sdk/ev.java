package com.flurry.sdk;

import android.text.TextUtils;
import com.flurry.sdk.ks;
import com.flurry.sdk.ku;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.Map;
/* loaded from: classes2.dex */
public final class ev extends eq {
    private String d = "";

    /* loaded from: classes2.dex */
    public interface a {
        void a(int i, String str);

        void a(Long l);
    }

    @Override // com.flurry.sdk.eq
    protected final ku.a a() {
        return ku.a.kPost;
    }

    @Override // com.flurry.sdk.eq
    protected final String b() {
        return this.d;
    }

    @Override // com.flurry.sdk.eq
    public final void c() {
        jw.a().a(this);
    }

    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v6, types: [RequestObjectType] */
    public final void a(String str, Map<String, String> map, final a aVar) {
        this.d = ef.a(str);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String value = entry.getValue();
            if (!TextUtils.isEmpty(entry.getKey()) && !TextUtils.isEmpty(value)) {
                b(entry.getKey(), entry.getValue());
            }
        }
        ?? r0 = 0;
        try {
            r0 = new ek(this.c).a().getBytes(Charset.defaultCharset().name());
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        el c = ed.c();
        ks<?, ?> ksVar = new ks<>();
        ksVar.f = this.d;
        ksVar.g = ku.a.kPost;
        ksVar.b = r0;
        ksVar.w = 20000;
        ksVar.c = new lc();
        ksVar.d = new lh();
        ksVar.a("Content-Type", er.f());
        ksVar.a("Content-Length", String.valueOf(r0.length));
        a(ksVar, c);
        ksVar.f2978a = new ks.a<byte[], String>() { // from class: com.flurry.sdk.ev.1
            @Override // com.flurry.sdk.ks.a
            public final /* synthetic */ void a(ks<byte[], String> ksVar2, String str2) {
                String str3 = str2;
                if (str3 != null) {
                    int a2 = eg.a(str3);
                    if (a2 == 201) {
                        aVar.a(eg.c(str3));
                        return;
                    }
                    aVar.a(a2, str3);
                    return;
                }
                aVar.a(-1, "Post failed");
            }
        };
        jw.a().a((Object) this, (ev) ksVar);
    }
}
