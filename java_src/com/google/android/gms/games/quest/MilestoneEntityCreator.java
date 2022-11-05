package com.google.android.gms.games.quest;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class MilestoneEntityCreator implements Parcelable.Creator<MilestoneEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(MilestoneEntity milestoneEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, milestoneEntity.getMilestoneId(), false);
        zzc.zza(parcel, 2, milestoneEntity.getCurrentProgress());
        zzc.zza(parcel, 3, milestoneEntity.getTargetProgress());
        zzc.zza(parcel, 4, milestoneEntity.getCompletionRewardData(), false);
        zzc.zzc(parcel, 5, milestoneEntity.getState());
        zzc.zza(parcel, 6, milestoneEntity.getEventId(), false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfY */
    public MilestoneEntity createFromParcel(Parcel parcel) {
        long j = 0;
        String str = null;
        int zzaY = zzb.zzaY(parcel);
        int i = 0;
        byte[] bArr = null;
        long j2 = 0;
        String str2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    j2 = zzb.zzi(parcel, zzaX);
                    break;
                case 3:
                    j = zzb.zzi(parcel, zzaX);
                    break;
                case 4:
                    bArr = zzb.zzt(parcel, zzaX);
                    break;
                case 5:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new MilestoneEntity(str2, j2, j, bArr, i, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjh */
    public MilestoneEntity[] newArray(int i) {
        return new MilestoneEntity[i];
    }
}
