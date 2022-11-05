package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzavo implements Parcelable.Creator<zzavn> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzavn zzavnVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzavnVar.zzNM(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzavnVar.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzavnVar.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhZ */
    public zzavn createFromParcel(Parcel parcel) {
        zzauy zzauyVar;
        int zzg;
        IBinder iBinder;
        IBinder iBinder2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        zzauy zzauyVar2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    zzauy zzauyVar3 = (zzauy) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzauy.CREATOR);
                    zzg = i;
                    iBinder = iBinder2;
                    zzauyVar = zzauyVar3;
                    break;
                case 2:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    zzauyVar = zzauyVar2;
                    zzg = i;
                    break;
                case 1000:
                    IBinder iBinder3 = iBinder2;
                    zzauyVar = zzauyVar2;
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    iBinder = iBinder3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    iBinder = iBinder2;
                    zzauyVar = zzauyVar2;
                    zzg = i;
                    break;
            }
            i = zzg;
            zzauyVar2 = zzauyVar;
            iBinder2 = iBinder;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzavn(i, zzauyVar2, iBinder2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlJ */
    public zzavn[] newArray(int i) {
        return new zzavn[i];
    }
}
