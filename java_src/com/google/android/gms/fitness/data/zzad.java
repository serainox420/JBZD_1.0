package com.google.android.gms.fitness.data;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2.dex */
public class zzad implements Parcelable.Creator<Value> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Value value, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, value.getFormat());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, value.isSet());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, value.zzCx());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, value.zzCC(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, value.zzCD(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, value.zzCE(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, value.zzCF(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, value.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, value.zzCG(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeo */
    public Value createFromParcel(Parcel parcel) {
        boolean z = false;
        byte[] bArr = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        float f = BitmapDescriptorFactory.HUE_RED;
        float[] fArr = null;
        int[] iArr = null;
        Bundle bundle = null;
        String str = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 3:
                    f = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 4:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    bundle = com.google.android.gms.common.internal.safeparcel.zzb.zzs(parcel, zzaX);
                    break;
                case 6:
                    iArr = com.google.android.gms.common.internal.safeparcel.zzb.zzw(parcel, zzaX);
                    break;
                case 7:
                    fArr = com.google.android.gms.common.internal.safeparcel.zzb.zzz(parcel, zzaX);
                    break;
                case 8:
                    bArr = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, zzaX);
                    break;
                case 1000:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new Value(i2, i, z, f, str, bundle, iArr, fArr, bArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgZ */
    public Value[] newArray(int i) {
        return new Value[i];
    }
}
