package com.google.android.gms.drive.events;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzg implements Parcelable.Creator<CompletionEvent> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(CompletionEvent completionEvent, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, completionEvent.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) completionEvent.zzaKG, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, completionEvent.zzaiu, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) completionEvent.zzaLJ, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) completionEvent.zzaLK, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable) completionEvent.zzaLL, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 7, completionEvent.zzaLM, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 8, completionEvent.zzJO);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, completionEvent.zzaLN, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbX */
    public CompletionEvent createFromParcel(Parcel parcel) {
        int i = 0;
        IBinder iBinder = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        ArrayList<String> arrayList = null;
        MetadataBundle metadataBundle = null;
        ParcelFileDescriptor parcelFileDescriptor = null;
        ParcelFileDescriptor parcelFileDescriptor2 = null;
        String str = null;
        DriveId driveId = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    driveId = (DriveId) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DriveId.CREATOR);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    parcelFileDescriptor2 = (ParcelFileDescriptor) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, ParcelFileDescriptor.CREATOR);
                    break;
                case 5:
                    parcelFileDescriptor = (ParcelFileDescriptor) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, ParcelFileDescriptor.CREATOR);
                    break;
                case 6:
                    metadataBundle = (MetadataBundle) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, MetadataBundle.CREATOR);
                    break;
                case 7:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 8:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 9:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new CompletionEvent(i2, driveId, str, parcelFileDescriptor2, parcelFileDescriptor, metadataBundle, arrayList, i, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzes */
    public CompletionEvent[] newArray(int i) {
        return new CompletionEvent[i];
    }
}
