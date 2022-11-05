package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzac;
import java.util.Set;
/* loaded from: classes2.dex */
public final class zzp extends com.google.android.gms.common.internal.safeparcel.zza {
    final String zzUA;
    final int zzaiI;
    final int zzblZ;
    public static final zzp zzblV = zzx("test_type", 1);
    public static final zzp zzblW = zzx("labeled_place", 6);
    public static final zzp zzblX = zzx("here_content", 7);
    public static final Set<zzp> zzblY = com.google.android.gms.common.util.zzf.zza(zzblV, zzblW, zzblX);
    public static final Parcelable.Creator<zzp> CREATOR = new zzq();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzp(int i, String str, int i2) {
        zzac.zzdr(str);
        this.zzaiI = i;
        this.zzUA = str;
        this.zzblZ = i2;
    }

    private static zzp zzx(String str, int i) {
        return new zzp(0, str, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzp)) {
            return false;
        }
        zzp zzpVar = (zzp) obj;
        return this.zzUA.equals(zzpVar.zzUA) && this.zzblZ == zzpVar.zzblZ;
    }

    public int hashCode() {
        return this.zzUA.hashCode();
    }

    public String toString() {
        return this.zzUA;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzq.zza(this, parcel, i);
    }
}
