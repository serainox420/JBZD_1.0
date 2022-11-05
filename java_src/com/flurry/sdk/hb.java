package com.flurry.sdk;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.flurry.sdk.gz;
/* loaded from: classes2.dex */
public final class hb {
    public static gz a(Context context, r rVar, String str, gz.a aVar, boolean z) {
        if (context == null || rVar == null) {
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            return new gy(context, rVar, aVar);
        }
        if (mc.g(str)) {
            if ((rVar instanceof x) && ((x) rVar).v()) {
                gm a2 = gn.a(context, go.d, rVar, aVar);
                Uri parse = Uri.parse(str);
                if (!rVar.l().f().g && a2 != null) {
                    a2.setVideoUri(parse);
                    return a2;
                }
                return a2;
            }
            int i = go.c;
            if (rVar.l().b.f) {
                i = go.b;
            }
            gm a3 = gn.a(context, i, rVar, aVar);
            Uri parse2 = Uri.parse(str);
            if (a3 != null) {
                a3.setVideoUri(parse2);
                return a3;
            }
            return a3;
        } else if ((rVar instanceof x) && ((x) rVar).v() && str.startsWith("file:")) {
            gm a4 = gn.a(context, go.d, rVar, aVar);
            Uri parse3 = Uri.parse(str);
            if (!rVar.l().f().g && a4 != null) {
                a4.setVideoUri(parse3);
                return a4;
            }
            return a4;
        } else if (!z) {
            return null;
        } else {
            return new he(context, str, rVar, aVar);
        }
    }
}
