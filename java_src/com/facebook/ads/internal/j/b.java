package com.facebook.ads.internal.j;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private c f2200a;
    private float b;

    public b(c cVar) {
        this(cVar, BitmapDescriptorFactory.HUE_RED);
    }

    public b(c cVar, float f) {
        this.f2200a = cVar;
        this.b = f;
    }

    public boolean a() {
        return this.f2200a == c.IS_VIEWABLE;
    }

    public int b() {
        return this.f2200a.a();
    }

    public float c() {
        return this.b;
    }
}
