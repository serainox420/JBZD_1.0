package com.flurry.sdk;

import android.content.Context;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class bm extends hl {
    private static final String c = bm.class.getSimpleName();

    public bm(Context context, r rVar) {
        super(context, rVar);
    }

    public final void a(Map<String, String> map) {
        a(bc.EV_RENDERED, map);
    }

    public final void b(Map<String, String> map) {
        a(bc.EV_CLICKED, map);
    }

    public final void c(Map<String, String> map) {
        a(bc.EV_AD_CLOSED, map);
    }

    public final void d(Map<String, String> map) {
        a(bc.EV_RENDER_FAILED, map);
    }

    private void a(bc bcVar, Map<String, String> map) {
        r rVar = this.b;
        au l = rVar.l();
        if (this.b != null && l.b.b != null) {
            ff.a(bcVar, map, c(), rVar, l, 0);
        }
    }
}
