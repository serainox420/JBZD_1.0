package com.flurry.sdk;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import com.flurry.android.AdCreative;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class bs implements hc, hm {
    public abstract gz a(Context context, r rVar, AdCreative adCreative, Bundle bundle);

    public abstract hl a(Context context, r rVar, Bundle bundle);

    public abstract String a();

    public abstract List<bo> b();

    public abstract List<ActivityInfo> d();

    public abstract List<bo> e();

    public abstract List<String> g();

    public abstract List<String> h();

    @Override // com.flurry.sdk.hm
    public final hl a(Context context, r rVar) {
        boolean a2;
        Bundle c;
        if (context == null || rVar == null) {
            return null;
        }
        bv bvVar = new bv(a(), b(), c(), h(), d());
        if (context == null) {
            a2 = false;
        } else {
            a2 = new bq().a(context, bvVar);
        }
        if (a2 && (c = lv.c(context)) != null) {
            return a(context, rVar, c);
        }
        return null;
    }

    @Override // com.flurry.sdk.hc
    public final gz b(Context context, r rVar) {
        boolean a2;
        Bundle c;
        AdCreative a3;
        if (context == null || rVar == null) {
            return null;
        }
        bv bvVar = new bv(a(), e(), f(), h(), Collections.emptyList());
        if (context == null) {
            a2 = false;
        } else {
            a2 = new bq().a(context, bvVar);
        }
        if (a2 && (c = lv.c(context)) != null && (a3 = fi.a(rVar.l().b.b)) != null) {
            return a(context, rVar, a3, c);
        }
        return null;
    }

    public List<String> c() {
        return g();
    }

    public List<String> f() {
        return g();
    }
}
