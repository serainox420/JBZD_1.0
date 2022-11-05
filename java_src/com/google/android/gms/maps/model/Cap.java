package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2.dex */
public class Cap extends com.google.android.gms.common.internal.safeparcel.zza {
    private final BitmapDescriptor bitmapDescriptor;
    private final int type;
    private final Float zzbpe;
    private static final String TAG = Cap.class.getSimpleName();
    public static final Parcelable.Creator<Cap> CREATOR = new zzb();

    /* JADX INFO: Access modifiers changed from: protected */
    public Cap(int i) {
        this(i, (BitmapDescriptor) null, (Float) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Cap(int i, IBinder iBinder, Float f) {
        this(i, zzeh(iBinder), f);
    }

    private Cap(int i, BitmapDescriptor bitmapDescriptor, Float f) {
        boolean z = false;
        boolean z2 = f != null && f.floatValue() > BitmapDescriptorFactory.HUE_RED;
        if (i != 3 || (bitmapDescriptor != null && z2)) {
            z = true;
        }
        String valueOf = String.valueOf(bitmapDescriptor);
        String valueOf2 = String.valueOf(f);
        zzac.zzb(z, new StringBuilder(String.valueOf(valueOf).length() + 63 + String.valueOf(valueOf2).length()).append("Invalid Cap: type=").append(i).append(" bitmapDescriptor=").append(valueOf).append(" bitmapRefWidth=").append(valueOf2).toString());
        this.type = i;
        this.bitmapDescriptor = bitmapDescriptor;
        this.zzbpe = f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Cap(BitmapDescriptor bitmapDescriptor, float f) {
        this(3, bitmapDescriptor, Float.valueOf(f));
    }

    private static BitmapDescriptor zzeh(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        return new BitmapDescriptor(IObjectWrapper.zza.zzcd(iBinder));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cap)) {
            return false;
        }
        Cap cap = (Cap) obj;
        return this.type == cap.type && zzaa.equal(this.bitmapDescriptor, cap.bitmapDescriptor) && zzaa.equal(this.zzbpe, cap.zzbpe);
    }

    public int getType() {
        return this.type;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.type), this.bitmapDescriptor, this.zzbpe);
    }

    public String toString() {
        return new StringBuilder(23).append("[Cap: type=").append(this.type).append("]").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }

    public Float zzJH() {
        return this.zzbpe;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzJI() {
        if (this.bitmapDescriptor == null) {
            return null;
        }
        return this.bitmapDescriptor.zzJm().asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Cap zzJJ() {
        switch (this.type) {
            case 0:
                return new ButtCap();
            case 1:
                return new SquareCap();
            case 2:
                return new RoundCap();
            case 3:
                return new CustomCap(this.bitmapDescriptor, this.zzbpe.floatValue());
            default:
                Log.w(TAG, new StringBuilder(29).append("Unknown Cap type: ").append(this.type).toString());
                return this;
        }
    }
}
