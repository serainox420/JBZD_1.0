package com.facebook.ads.internal.a;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.ads.internal.g.g;
import com.facebook.ads.internal.util.c;
import com.facebook.ads.internal.util.h;
import com.facebook.ads.internal.util.z;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class a {
    public abstract c.a a();

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Context context, String str, Uri uri, Map<String, String> map) {
        if (!TextUtils.isEmpty(str)) {
            g a2 = g.a(context);
            if (this instanceof c) {
                a2.h(str, map);
            } else {
                a2.c(str, map);
            }
        } else {
            String queryParameter = uri.getQueryParameter("native_click_report_url");
            if (TextUtils.isEmpty(queryParameter)) {
                return;
            }
            new z(map).execute(queryParameter);
        }
        h.a(context, "Click logged");
    }

    public abstract void b();
}
