package com.google.android.gms.games.event;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.games.PlayerEntity;
/* loaded from: classes2.dex */
public class EventEntityCreator implements Parcelable.Creator<EventEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(EventEntity eventEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, eventEntity.getEventId(), false);
        zzc.zza(parcel, 2, eventEntity.getName(), false);
        zzc.zza(parcel, 3, eventEntity.getDescription(), false);
        zzc.zza(parcel, 4, (Parcelable) eventEntity.getIconImageUri(), i, false);
        zzc.zza(parcel, 5, eventEntity.getIconImageUrl(), false);
        zzc.zza(parcel, 6, (Parcelable) eventEntity.getPlayer(), i, false);
        zzc.zza(parcel, 7, eventEntity.getValue());
        zzc.zza(parcel, 8, eventEntity.getFormattedValue(), false);
        zzc.zza(parcel, 9, eventEntity.isVisible());
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfH */
    public EventEntity createFromParcel(Parcel parcel) {
        String str = null;
        int zzaY = zzb.zzaY(parcel);
        long j = 0;
        boolean z = false;
        PlayerEntity playerEntity = null;
        String str2 = null;
        Uri uri = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    str5 = zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    str4 = zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str3 = zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    uri = (Uri) zzb.zza(parcel, zzaX, Uri.CREATOR);
                    break;
                case 5:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    playerEntity = (PlayerEntity) zzb.zza(parcel, zzaX, PlayerEntity.CREATOR);
                    break;
                case 7:
                    j = zzb.zzi(parcel, zzaX);
                    break;
                case 8:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 9:
                    z = zzb.zzc(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new EventEntity(str5, str4, str3, uri, str2, playerEntity, j, str, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziv */
    public EventEntity[] newArray(int i) {
        return new EventEntity[i];
    }
}
