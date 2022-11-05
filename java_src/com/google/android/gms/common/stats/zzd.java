package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzd implements Parcelable.Creator<WakeLockEvent> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(WakeLockEvent wakeLockEvent, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, wakeLockEvent.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, wakeLockEvent.getTimeMillis());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, wakeLockEvent.zzyM(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, wakeLockEvent.zzyP());
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 6, wakeLockEvent.zzyQ(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, wakeLockEvent.zzyS());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, wakeLockEvent.zzyN(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 11, wakeLockEvent.getEventType());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 12, wakeLockEvent.zzyR(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 13, wakeLockEvent.zzyU(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 14, wakeLockEvent.zzyT());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 15, wakeLockEvent.zzyV());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 16, wakeLockEvent.zzyW());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 17, wakeLockEvent.zzyO(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbj */
    public WakeLockEvent createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        long j = 0;
        int i2 = 0;
        String str = null;
        int i3 = 0;
        ArrayList<String> arrayList = null;
        String str2 = null;
        long j2 = 0;
        int i4 = 0;
        String str3 = null;
        String str4 = null;
        float f = BitmapDescriptorFactory.HUE_RED;
        long j3 = 0;
        String str5 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 3:
                case 7:
                case 9:
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
                case 4:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 8:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 10:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 11:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 12:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 13:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 14:
                    i4 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 15:
                    f = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 16:
                    j3 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 17:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new WakeLockEvent(i, j, i2, str, i3, arrayList, str2, j2, i4, str3, str4, f, j3, str5);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdn */
    public WakeLockEvent[] newArray(int i) {
        return new WakeLockEvent[i];
    }
}
