package com.google.android.gms.games.internal.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.games.request.GameRequestEntity;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class GameRequestClusterCreator implements Parcelable.Creator<GameRequestCluster> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(GameRequestCluster gameRequestCluster, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, gameRequestCluster.zzGk(), false);
        zzc.zzc(parcel, 1000, gameRequestCluster.getVersionCode());
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfR */
    public GameRequestCluster createFromParcel(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    arrayList = zzb.zzc(parcel, zzaX, GameRequestEntity.CREATOR);
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
        return new GameRequestCluster(i, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziZ */
    public GameRequestCluster[] newArray(int i) {
        return new GameRequestCluster[i];
    }
}
