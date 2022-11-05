package com.flurry.sdk;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.flurry.sdk.ks;
import com.flurry.sdk.ku;
import java.util.List;
/* loaded from: classes2.dex */
public final class eo extends eq {
    private String d = "";

    /* loaded from: classes2.dex */
    public interface a {
        void a(Bitmap bitmap);
    }

    public final void a(String str, final int i, final a aVar) {
        if (i < 3) {
            ks ksVar = new ks();
            ksVar.f = str;
            ksVar.g = ku.a.kGet;
            ksVar.w = 40000;
            ksVar.d = new eb();
            ksVar.f2978a = new ks.a<Void, Bitmap>() { // from class: com.flurry.sdk.eo.1
                @Override // com.flurry.sdk.ks.a
                public final /* synthetic */ void a(final ks<Void, Bitmap> ksVar2, Bitmap bitmap) {
                    final Bitmap bitmap2 = bitmap;
                    jy.a().a(new ma() { // from class: com.flurry.sdk.eo.1.1
                        @Override // com.flurry.sdk.ma
                        public final void a() {
                            List<String> a2;
                            int i2 = ksVar2.p;
                            if (i2 >= 200 && i2 < 300) {
                                aVar.a(bitmap2);
                            } else if (i2 >= 300 && i2 < 400 && (a2 = ksVar2.a("Location")) != null && a2.size() > 0) {
                                String str2 = a2.get(0);
                                if (!TextUtils.isEmpty(str2)) {
                                    eo.this.a(str2, i + 1, aVar);
                                }
                            }
                        }
                    });
                }
            };
            jw.a().a((Object) this, (eo) ksVar);
        }
    }

    @Override // com.flurry.sdk.eq
    protected final ku.a a() {
        return ku.a.kGet;
    }

    @Override // com.flurry.sdk.eq
    protected final String b() {
        return this.d;
    }

    @Override // com.flurry.sdk.eq
    public final void c() {
        jw.a().a(this);
    }
}
