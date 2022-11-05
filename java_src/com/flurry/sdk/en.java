package com.flurry.sdk;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.flurry.sdk.eo;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class en {
    private static en b = null;

    /* renamed from: a  reason: collision with root package name */
    public LinkedHashMap<String, Bitmap> f2619a;

    private en() {
        this.f2619a = null;
        this.f2619a = new LinkedHashMap<>();
    }

    public static en a() {
        if (b == null) {
            b = new en();
        }
        return b;
    }

    public final void a(final String str, final ImageView imageView) {
        if (this.f2619a.get(str) != null) {
            imageView.setImageBitmap(this.f2619a.get(str));
            return;
        }
        final eo.a aVar = new eo.a() { // from class: com.flurry.sdk.en.1
            @Override // com.flurry.sdk.eo.a
            public final void a(Bitmap bitmap) {
                en enVar = en.this;
                enVar.f2619a.put(str, bitmap);
                if (enVar.f2619a.size() > 7) {
                    Iterator<Map.Entry<String, Bitmap>> it = enVar.f2619a.entrySet().iterator();
                    if (it.hasNext()) {
                        enVar.f2619a.remove(it.next().getKey());
                    }
                }
                if (imageView != null) {
                    imageView.setImageBitmap(bitmap);
                }
            }
        };
        jy.a().b(new ma() { // from class: com.flurry.sdk.eu.6
            @Override // com.flurry.sdk.ma
            public final void a() {
                new eo().a(ef.b(str), 0, aVar);
            }
        });
    }
}
