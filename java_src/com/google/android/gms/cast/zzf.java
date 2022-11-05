package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
/* loaded from: classes2.dex */
public class zzf extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzf> CREATOR = new zzg();
    private int zzaoe;

    public zzf() {
        this(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzf(int i) {
        this.zzaoe = i;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof zzf) && this.zzaoe == ((zzf) obj).zzaoe;
    }

    public int getConnectionType() {
        return this.zzaoe;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.zzaoe));
    }

    public String toString() {
        String str;
        switch (this.zzaoe) {
            case 0:
                str = "STRONG";
                break;
            case 1:
            default:
                str = "UNKNOWN";
                break;
            case 2:
                str = "INVISIBLE";
                break;
        }
        return String.format("joinOptions(connectionType=%s)", str);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzg.zza(this, parcel, i);
    }
}
