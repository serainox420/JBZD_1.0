package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
/* loaded from: classes2.dex */
public final class MostRecentGameInfoRef extends zzc implements MostRecentGameInfo {
    private final PlayerColumnNames zzaYD;

    public MostRecentGameInfoRef(DataHolder dataHolder, int i, PlayerColumnNames playerColumnNames) {
        super(dataHolder, i);
        this.zzaYD = playerColumnNames;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return MostRecentGameInfoEntity.zza(this, obj);
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return MostRecentGameInfoEntity.zza(this);
    }

    public String toString() {
        return MostRecentGameInfoEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((MostRecentGameInfoEntity) ((MostRecentGameInfo) mo520freeze())).writeToParcel(parcel, i);
    }

    @Override // com.google.android.gms.games.internal.player.MostRecentGameInfo
    public String zzGc() {
        return getString(this.zzaYD.zzbdc);
    }

    @Override // com.google.android.gms.games.internal.player.MostRecentGameInfo
    public String zzGd() {
        return getString(this.zzaYD.zzbdd);
    }

    @Override // com.google.android.gms.games.internal.player.MostRecentGameInfo
    public long zzGe() {
        return getLong(this.zzaYD.zzbde);
    }

    @Override // com.google.android.gms.games.internal.player.MostRecentGameInfo
    public Uri zzGf() {
        return zzdg(this.zzaYD.zzbdf);
    }

    @Override // com.google.android.gms.games.internal.player.MostRecentGameInfo
    public Uri zzGg() {
        return zzdg(this.zzaYD.zzbdg);
    }

    @Override // com.google.android.gms.games.internal.player.MostRecentGameInfo
    public Uri zzGh() {
        return zzdg(this.zzaYD.zzbdh);
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzGi */
    public MostRecentGameInfo mo520freeze() {
        return new MostRecentGameInfoEntity(this);
    }
}
