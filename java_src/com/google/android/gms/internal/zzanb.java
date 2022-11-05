package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzanb implements Parcelable.Creator<zzana> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzana zzanaVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzanaVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzanaVar.zzWD, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzanaVar.zzadi, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 4, zzanaVar.zzaQU, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzanaVar.zzaQV);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzanaVar.zzaQO, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzanaVar.zzaQY, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, (Parcelable) zzanaVar.zzaQZ, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, (Parcelable) zzanaVar.zzaRa, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, (Parcelable) zzanaVar.zzaRb, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, (Parcelable) zzanaVar.zzaRc, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 12, (Parcelable) zzanaVar.zzaRd, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 13, (Parcelable) zzanaVar.zzaRe, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 14, (Parcelable) zzanaVar.zzaRf, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 15, (Parcelable) zzanaVar.zzaRg, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 16, zzanaVar.zzaQW);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 17, zzanaVar.zzaQX);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 18, (Parcelable) zzanaVar.zzaRh, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdJ */
    public zzana createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        ArrayList<String> arrayList = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        String str3 = null;
        String str4 = null;
        zzani zzaniVar = null;
        zzang zzangVar = null;
        zzanm zzanmVar = null;
        zzano zzanoVar = null;
        zzanq zzanqVar = null;
        zzank zzankVar = null;
        zzane zzaneVar = null;
        zzamy zzamyVar = null;
        zzamw zzamwVar = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 5:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 6:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    zzaniVar = (zzani) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzani.CREATOR);
                    break;
                case 9:
                    zzangVar = (zzang) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzang.CREATOR);
                    break;
                case 10:
                    zzanmVar = (zzanm) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzanm.CREATOR);
                    break;
                case 11:
                    zzanoVar = (zzano) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzano.CREATOR);
                    break;
                case 12:
                    zzanqVar = (zzanq) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzanq.CREATOR);
                    break;
                case 13:
                    zzankVar = (zzank) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzank.CREATOR);
                    break;
                case 14:
                    zzaneVar = (zzane) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzane.CREATOR);
                    break;
                case 15:
                    zzamyVar = (zzamy) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzamy.CREATOR);
                    break;
                case 16:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 17:
                    z3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 18:
                    zzamwVar = (zzamw) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzamw.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzana(i, str, str2, arrayList, z, z2, z3, str3, str4, zzaniVar, zzangVar, zzanmVar, zzanoVar, zzanqVar, zzankVar, zzaneVar, zzamyVar, zzamwVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgk */
    public zzana[] newArray(int i) {
        return new zzana[i];
    }
}
