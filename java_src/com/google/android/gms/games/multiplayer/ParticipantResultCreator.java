package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class ParticipantResultCreator implements Parcelable.Creator<ParticipantResult> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(ParticipantResult participantResult, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, participantResult.getParticipantId(), false);
        zzc.zzc(parcel, 2, participantResult.getResult());
        zzc.zzc(parcel, 3, participantResult.getPlacing());
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfU */
    public ParticipantResult createFromParcel(Parcel parcel) {
        int i = 0;
        int zzaY = zzb.zzaY(parcel);
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new ParticipantResult(str, i2, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjd */
    public ParticipantResult[] newArray(int i) {
        return new ParticipantResult[i];
    }
}
