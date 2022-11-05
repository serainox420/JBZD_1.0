package com.smartadserver.android.library.ui.a.c;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: SASVector4f.java */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    protected float[] f5605a = {BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};

    public d() {
        this.f5605a[0] = 0.0f;
        this.f5605a[1] = 0.0f;
        this.f5605a[2] = 0.0f;
        this.f5605a[3] = 0.0f;
    }

    public float[] c() {
        return this.f5605a;
    }

    public void a(d dVar) {
        this.f5605a[0] = dVar.f5605a[0];
        this.f5605a[1] = dVar.f5605a[1];
        this.f5605a[2] = dVar.f5605a[2];
        this.f5605a[3] = dVar.f5605a[3];
    }

    public float b(d dVar) {
        return (this.f5605a[0] * dVar.f5605a[0]) + (this.f5605a[1] * dVar.f5605a[1]) + (this.f5605a[2] * dVar.f5605a[2]) + (this.f5605a[3] * dVar.f5605a[3]);
    }

    public float d() {
        return this.f5605a[0];
    }

    public float e() {
        return this.f5605a[1];
    }

    public float f() {
        return this.f5605a[2];
    }

    public float g() {
        return this.f5605a[3];
    }

    public void a(float f) {
        this.f5605a[0] = f;
    }

    public void b(float f) {
        this.f5605a[1] = f;
    }

    public void c(float f) {
        this.f5605a[2] = f;
    }

    public void d(float f) {
        this.f5605a[3] = f;
    }

    public float h() {
        return this.f5605a[3];
    }

    public void e(float f) {
        this.f5605a[3] = f;
    }

    public void a(float f, float f2, float f3, float f4) {
        this.f5605a[0] = f;
        this.f5605a[1] = f2;
        this.f5605a[2] = f3;
        this.f5605a[3] = f4;
    }

    public String toString() {
        return "X:" + this.f5605a[0] + " Y:" + this.f5605a[1] + " Z:" + this.f5605a[2] + " W:" + this.f5605a[3];
    }
}
