package com.flurry.sdk;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class gq {
    private float c = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: a  reason: collision with root package name */
    float f2736a = BitmapDescriptorFactory.HUE_RED;
    ArrayList<a> b = new ArrayList<>();

    public gq(List<dn> list) {
        if (list != null) {
            for (dn dnVar : list) {
                this.b.add(new a(dnVar));
            }
        }
    }

    public final void a(boolean z, boolean z2, int i, float f) {
        if (f > this.c) {
            if (z2 && (z || i == 100)) {
                this.f2736a += f - this.c;
            }
            this.c = f;
        }
    }

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        dn f2737a;
        private boolean b;
        private float c = BitmapDescriptorFactory.HUE_RED;
        private float d = BitmapDescriptorFactory.HUE_RED;
        private float e = BitmapDescriptorFactory.HUE_RED;
        private long f;

        public a(dn dnVar) {
            this.f2737a = dnVar;
        }

        public final boolean a(boolean z, boolean z2, int i, float f) {
            if (!this.b && f >= this.e) {
                long currentTimeMillis = System.currentTimeMillis();
                this.f = currentTimeMillis;
                if (currentTimeMillis - this.f > 2000) {
                    this.d = BitmapDescriptorFactory.HUE_RED;
                }
                if ((!z && i < this.f2737a.c) || (this.f2737a.e && !z2)) {
                    this.d = BitmapDescriptorFactory.HUE_RED;
                    this.e = f;
                    return false;
                }
                float f2 = f - this.e;
                this.e = f;
                if (this.f2737a.d) {
                    this.d = f2 + this.d;
                    if (this.d < ((float) this.f2737a.b)) {
                        return false;
                    }
                    this.b = true;
                    return true;
                }
                this.c = f2 + this.c;
                if (this.c < ((float) this.f2737a.b)) {
                    return false;
                }
                this.b = true;
                return true;
            }
            return false;
        }
    }
}
