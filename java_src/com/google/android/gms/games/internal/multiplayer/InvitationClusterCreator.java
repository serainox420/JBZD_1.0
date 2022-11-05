package com.google.android.gms.games.internal.multiplayer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.games.multiplayer.InvitationEntity;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class InvitationClusterCreator implements Parcelable.Creator<ZInvitationCluster> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(ZInvitationCluster zInvitationCluster, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, zInvitationCluster.zzFV(), false);
        zzc.zzc(parcel, 1000, zInvitationCluster.getVersionCode());
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfN */
    public ZInvitationCluster createFromParcel(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    arrayList = zzb.zzc(parcel, zzaX, InvitationEntity.CREATOR);
                    break;
                case 1000:
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
        return new ZInvitationCluster(i, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziT */
    public ZInvitationCluster[] newArray(int i) {
        return new ZInvitationCluster[i];
    }
}
