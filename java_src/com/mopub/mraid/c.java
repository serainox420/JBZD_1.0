package com.mopub.mraid;

import android.content.Context;
import android.graphics.Rect;
import com.mopub.common.util.Dips;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MraidScreenMetrics.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final Context f4574a;
    private final Rect b = new Rect();
    private final Rect c = new Rect();
    private final Rect d = new Rect();
    private final Rect e = new Rect();
    private final Rect f = new Rect();
    private final Rect g = new Rect();
    private final Rect h = new Rect();
    private final Rect i = new Rect();
    private final float j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context, float f) {
        this.f4574a = context.getApplicationContext();
        this.j = f;
    }

    private void a(Rect rect, Rect rect2) {
        rect2.set(Dips.pixelsToIntDips(rect.left, this.f4574a), Dips.pixelsToIntDips(rect.top, this.f4574a), Dips.pixelsToIntDips(rect.right, this.f4574a), Dips.pixelsToIntDips(rect.bottom, this.f4574a));
    }

    public float getDensity() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, int i2) {
        this.b.set(0, 0, i, i2);
        a(this.b, this.c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Rect a() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, int i2, int i3, int i4) {
        this.d.set(i, i2, i + i3, i2 + i4);
        a(this.d, this.e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Rect b() {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Rect c() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i, int i2, int i3, int i4) {
        this.f.set(i, i2, i + i3, i2 + i4);
        a(this.f, this.g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Rect d() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Rect e() {
        return this.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(int i, int i2, int i3, int i4) {
        this.h.set(i, i2, i + i3, i2 + i4);
        a(this.h, this.i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Rect f() {
        return this.h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Rect g() {
        return this.i;
    }
}
