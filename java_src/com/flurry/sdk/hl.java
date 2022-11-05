package com.flurry.sdk;

import android.content.Context;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public abstract class hl {

    /* renamed from: a  reason: collision with root package name */
    static final String f2804a = hl.class.getSimpleName();
    public final r b;
    private final WeakReference<Context> c;

    public abstract void a();

    public hl(Context context, r rVar) {
        this.c = new WeakReference<>(context);
        this.b = rVar;
    }

    public final Context c() {
        return this.c.get();
    }
}
