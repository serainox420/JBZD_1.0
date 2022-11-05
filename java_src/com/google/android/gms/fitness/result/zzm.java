package com.google.android.gms.fitness.result;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzm implements Parcelable.Creator<zzl> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzl zzlVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzlVar.getUri(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzlVar.getStatus(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzlVar.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfn */
    public zzl createFromParcel(Parcel parcel) {
        Uri uri;
        int zzg;
        Status status;
        Status status2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        Uri uri2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    Uri uri3 = (Uri) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Uri.CREATOR);
                    zzg = i;
                    status = status2;
                    uri = uri3;
                    break;
                case 2:
                    status = (Status) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Status.CREATOR);
                    uri = uri2;
                    zzg = i;
                    break;
                case 1000:
                    Status status3 = status2;
                    uri = uri2;
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    status = status3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    status = status2;
                    uri = uri2;
                    zzg = i;
                    break;
            }
            i = zzg;
            uri2 = uri;
            status2 = status;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzl(i, uri2, status2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzia */
    public zzl[] newArray(int i) {
        return new zzl[i];
    }
}
