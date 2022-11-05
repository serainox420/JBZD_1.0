package com.google.android.gms.nearby.messages;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzayb;
import com.google.android.gms.internal.zzayf;
import com.google.android.gms.nearby.messages.internal.zzt;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzb implements Parcelable.Creator<MessageFilter> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(MessageFilter messageFilter, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, messageFilter.zzOE(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, messageFilter.zzOG(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, messageFilter.zzOF());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, messageFilter.zzOH(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, messageFilter.zzOI());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, messageFilter.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziH */
    public MessageFilter createFromParcel(Parcel parcel) {
        ArrayList arrayList = null;
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        boolean z = false;
        ArrayList arrayList2 = null;
        ArrayList arrayList3 = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    arrayList3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzt.CREATOR);
                    break;
                case 2:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzayf.CREATOR);
                    break;
                case 3:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 4:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzayb.CREATOR);
                    break;
                case 5:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
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
        return new MessageFilter(i2, arrayList3, arrayList2, z, arrayList, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzmw */
    public MessageFilter[] newArray(int i) {
        return new MessageFilter[i];
    }
}
