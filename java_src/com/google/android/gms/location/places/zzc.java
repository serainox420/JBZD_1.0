package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzc implements Parcelable.Creator<AutocompleteFilter> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(AutocompleteFilter autocompleteFilter, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, autocompleteFilter.zzblb);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, autocompleteFilter.zzblc, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, autocompleteFilter.zzbld, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, autocompleteFilter.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgZ */
    public AutocompleteFilter createFromParcel(Parcel parcel) {
        String str = null;
        boolean z = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        ArrayList<Integer> arrayList = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 2:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzD(parcel, zzaX);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 1000:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new AutocompleteFilter(i, z, arrayList, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkE */
    public AutocompleteFilter[] newArray(int i) {
        return new AutocompleteFilter[i];
    }
}
