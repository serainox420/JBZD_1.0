package com.smartadserver.android.library.ui.a.c;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: SASQuaternion.java */
/* loaded from: classes3.dex */
public class c extends d {
    private boolean c = false;
    private b b = new b();

    public c() {
        b();
    }

    /* renamed from: a */
    public c clone() {
        c cVar = new c();
        cVar.a((d) this);
        return cVar;
    }

    public void a(c cVar) {
        this.c = true;
        a((d) cVar);
    }

    public void a(c cVar, c cVar2) {
        d dVar = new d();
        if (cVar != cVar2) {
            cVar2.f5605a[3] = (((this.f5605a[3] * cVar.f5605a[3]) - (this.f5605a[0] * cVar.f5605a[0])) - (this.f5605a[1] * cVar.f5605a[1])) - (this.f5605a[2] * cVar.f5605a[2]);
            cVar2.f5605a[0] = (((this.f5605a[3] * cVar.f5605a[0]) + (this.f5605a[0] * cVar.f5605a[3])) + (this.f5605a[1] * cVar.f5605a[2])) - (this.f5605a[2] * cVar.f5605a[1]);
            cVar2.f5605a[1] = (((this.f5605a[3] * cVar.f5605a[1]) + (this.f5605a[1] * cVar.f5605a[3])) + (this.f5605a[2] * cVar.f5605a[0])) - (this.f5605a[0] * cVar.f5605a[2]);
            cVar2.f5605a[2] = (((this.f5605a[3] * cVar.f5605a[2]) + (this.f5605a[2] * cVar.f5605a[3])) + (this.f5605a[0] * cVar.f5605a[1])) - (this.f5605a[1] * cVar.f5605a[0]);
            return;
        }
        dVar.f5605a[0] = cVar.f5605a[0];
        dVar.f5605a[1] = cVar.f5605a[1];
        dVar.f5605a[2] = cVar.f5605a[2];
        dVar.f5605a[3] = cVar.f5605a[3];
        cVar2.f5605a[3] = (((this.f5605a[3] * dVar.f5605a[3]) - (this.f5605a[0] * dVar.f5605a[0])) - (this.f5605a[1] * dVar.f5605a[1])) - (this.f5605a[2] * dVar.f5605a[2]);
        cVar2.f5605a[0] = (((this.f5605a[3] * dVar.f5605a[0]) + (this.f5605a[0] * dVar.f5605a[3])) + (this.f5605a[1] * dVar.f5605a[2])) - (this.f5605a[2] * dVar.f5605a[1]);
        cVar2.f5605a[1] = (((this.f5605a[3] * dVar.f5605a[1]) + (this.f5605a[1] * dVar.f5605a[3])) + (this.f5605a[2] * dVar.f5605a[0])) - (this.f5605a[0] * dVar.f5605a[2]);
        cVar2.f5605a[2] = (((this.f5605a[3] * dVar.f5605a[2]) + (this.f5605a[2] * dVar.f5605a[3])) + (this.f5605a[0] * dVar.f5605a[1])) - (dVar.f5605a[0] * this.f5605a[1]);
    }

    public void b() {
        this.c = true;
        a(BitmapDescriptorFactory.HUE_RED);
        b(BitmapDescriptorFactory.HUE_RED);
        c(BitmapDescriptorFactory.HUE_RED);
        d(1.0f);
    }

    @Override // com.smartadserver.android.library.ui.a.c.d
    public String toString() {
        return "{X: " + d() + ", Y:" + e() + ", Z:" + f() + ", W:" + g() + "}";
    }

    public void a(c cVar, c cVar2, float f) {
        float b = b(cVar);
        if (b < BitmapDescriptorFactory.HUE_RED) {
            c cVar3 = new c();
            b = -b;
            cVar3.f5605a[0] = -cVar.f5605a[0];
            cVar3.f5605a[1] = -cVar.f5605a[1];
            cVar3.f5605a[2] = -cVar.f5605a[2];
            cVar3.f5605a[3] = -cVar.f5605a[3];
            cVar = cVar3;
        }
        if (Math.abs(b) >= 1.0d) {
            cVar2.f5605a[0] = this.f5605a[0];
            cVar2.f5605a[1] = this.f5605a[1];
            cVar2.f5605a[2] = this.f5605a[2];
            cVar2.f5605a[3] = this.f5605a[3];
            return;
        }
        double sqrt = Math.sqrt(1.0d - (b * b));
        double acos = Math.acos(b);
        double sin = Math.sin((1.0f - f) * acos) / sqrt;
        double sin2 = Math.sin(acos * f) / sqrt;
        cVar2.f5605a[3] = (float) ((this.f5605a[3] * sin) + (cVar.f5605a[3] * sin2));
        cVar2.f5605a[0] = (float) ((this.f5605a[0] * sin) + (cVar.f5605a[0] * sin2));
        cVar2.f5605a[1] = (float) ((this.f5605a[1] * sin) + (cVar.f5605a[1] * sin2));
        cVar2.f5605a[2] = (float) ((sin2 * cVar.f5605a[2]) + (sin * this.f5605a[2]));
    }
}
