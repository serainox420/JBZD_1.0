package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class zzu extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzu> CREATOR = new zzv();
    public final int zzaiI;
    final List<zza> zzbmL;
    final List<zzb> zzbmM;

    /* loaded from: classes2.dex */
    public static class zza extends com.google.android.gms.common.internal.safeparcel.zza {
        public static final Parcelable.Creator<zza> CREATOR = new zzd();
        final int zzaiI;
        final int zzbmN;
        final int zzbmO;

        /* JADX INFO: Access modifiers changed from: package-private */
        public zza(int i, int i2, int i3) {
            this.zzaiI = i;
            this.zzbmN = i2;
            this.zzbmO = i3;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzd.zza(this, parcel, i);
        }
    }

    /* loaded from: classes2.dex */
    public static class zzb extends com.google.android.gms.common.internal.safeparcel.zza {
        public static final Parcelable.Creator<zzb> CREATOR = new zze();
        final int zzaiI;
        final int zzbmP;
        final int zzbmQ;
        final int zzbmR;
        final int zzbmS;
        final int zzbmT;
        final int zzbmU;
        final List<zza> zzbmV;

        /* JADX INFO: Access modifiers changed from: package-private */
        public zzb(int i, int i2, int i3, int i4, int i5, int i6, int i7, List<zza> list) {
            this.zzaiI = i;
            this.zzbmP = i2;
            this.zzbmQ = i3;
            this.zzbmR = i4;
            this.zzbmS = i5;
            this.zzbmT = i6;
            this.zzbmU = i7;
            this.zzbmV = Collections.unmodifiableList(list);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zze.zza(this, parcel, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzu(int i, List<zza> list, List<zzb> list2) {
        this.zzaiI = i;
        this.zzbmL = Collections.unmodifiableList(list);
        this.zzbmM = Collections.unmodifiableList(list2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzv.zza(this, parcel, i);
    }
}
