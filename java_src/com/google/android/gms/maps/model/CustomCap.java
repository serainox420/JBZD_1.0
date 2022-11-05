package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.zzac;
/* loaded from: classes2.dex */
public final class CustomCap extends Cap {
    public final BitmapDescriptor bitmapDescriptor;
    public final float refWidth;

    public CustomCap(BitmapDescriptor bitmapDescriptor) {
        this(bitmapDescriptor, 10.0f);
    }

    public CustomCap(BitmapDescriptor bitmapDescriptor, float f) {
        super((BitmapDescriptor) zzac.zzb(bitmapDescriptor, "bitmapDescriptor must not be null"), zza(f, "refWidth must be positive"));
        this.bitmapDescriptor = bitmapDescriptor;
        this.refWidth = f;
    }

    private static float zza(float f, String str) {
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException(str);
        }
        return f;
    }

    @Override // com.google.android.gms.maps.model.Cap
    public String toString() {
        String valueOf = String.valueOf(this.bitmapDescriptor);
        return new StringBuilder(String.valueOf(valueOf).length() + 55).append("[CustomCap: bitmapDescriptor=").append(valueOf).append(" refWidth=").append(this.refWidth).append("]").toString();
    }
}
