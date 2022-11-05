package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
/* loaded from: classes2.dex */
public class MapValue extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<MapValue> CREATOR = new zzt();
    private final int zzaTY;
    private final float zzaTZ;
    private final int zzaiI;

    public MapValue(int i, float f) {
        this(1, i, f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MapValue(int i, int i2, float f) {
        this.zzaiI = i;
        this.zzaTY = i2;
        this.zzaTZ = f;
    }

    private boolean zza(MapValue mapValue) {
        if (this.zzaTY == mapValue.zzaTY) {
            switch (this.zzaTY) {
                case 2:
                    return asFloat() == mapValue.asFloat();
                default:
                    return this.zzaTZ == mapValue.zzaTZ;
            }
        }
        return false;
    }

    public static MapValue zzd(float f) {
        return new MapValue(2, f);
    }

    public float asFloat() {
        com.google.android.gms.common.internal.zzac.zza(this.zzaTY == 2, "Value is not in float format");
        return this.zzaTZ;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof MapValue) && zza((MapValue) obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getFormat() {
        return this.zzaTY;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public int hashCode() {
        return (int) this.zzaTZ;
    }

    public String toString() {
        switch (this.zzaTY) {
            case 2:
                return Float.toString(asFloat());
            default:
                return "unknown";
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzt.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float zzCx() {
        return this.zzaTZ;
    }
}
