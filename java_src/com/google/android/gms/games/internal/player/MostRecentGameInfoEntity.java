package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class MostRecentGameInfoEntity extends GamesAbstractSafeParcelable implements MostRecentGameInfo {
    public static final Parcelable.Creator<MostRecentGameInfoEntity> CREATOR = new MostRecentGameInfoEntityCreator();
    private final String zzbcE;
    private final String zzbcF;
    private final long zzbcG;
    private final Uri zzbcH;
    private final Uri zzbcI;
    private final Uri zzbcJ;

    public MostRecentGameInfoEntity(MostRecentGameInfo mostRecentGameInfo) {
        this.zzbcE = mostRecentGameInfo.zzGc();
        this.zzbcF = mostRecentGameInfo.zzGd();
        this.zzbcG = mostRecentGameInfo.zzGe();
        this.zzbcH = mostRecentGameInfo.zzGf();
        this.zzbcI = mostRecentGameInfo.zzGg();
        this.zzbcJ = mostRecentGameInfo.zzGh();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MostRecentGameInfoEntity(String str, String str2, long j, Uri uri, Uri uri2, Uri uri3) {
        this.zzbcE = str;
        this.zzbcF = str2;
        this.zzbcG = j;
        this.zzbcH = uri;
        this.zzbcI = uri2;
        this.zzbcJ = uri3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(MostRecentGameInfo mostRecentGameInfo) {
        return zzaa.hashCode(mostRecentGameInfo.zzGc(), mostRecentGameInfo.zzGd(), Long.valueOf(mostRecentGameInfo.zzGe()), mostRecentGameInfo.zzGf(), mostRecentGameInfo.zzGg(), mostRecentGameInfo.zzGh());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(MostRecentGameInfo mostRecentGameInfo, Object obj) {
        if (!(obj instanceof MostRecentGameInfo)) {
            return false;
        }
        if (mostRecentGameInfo == obj) {
            return true;
        }
        MostRecentGameInfo mostRecentGameInfo2 = (MostRecentGameInfo) obj;
        return zzaa.equal(mostRecentGameInfo2.zzGc(), mostRecentGameInfo.zzGc()) && zzaa.equal(mostRecentGameInfo2.zzGd(), mostRecentGameInfo.zzGd()) && zzaa.equal(Long.valueOf(mostRecentGameInfo2.zzGe()), Long.valueOf(mostRecentGameInfo.zzGe())) && zzaa.equal(mostRecentGameInfo2.zzGf(), mostRecentGameInfo.zzGf()) && zzaa.equal(mostRecentGameInfo2.zzGg(), mostRecentGameInfo.zzGg()) && zzaa.equal(mostRecentGameInfo2.zzGh(), mostRecentGameInfo.zzGh());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(MostRecentGameInfo mostRecentGameInfo) {
        return zzaa.zzv(mostRecentGameInfo).zzg("GameId", mostRecentGameInfo.zzGc()).zzg("GameName", mostRecentGameInfo.zzGd()).zzg("ActivityTimestampMillis", Long.valueOf(mostRecentGameInfo.zzGe())).zzg("GameIconUri", mostRecentGameInfo.zzGf()).zzg("GameHiResUri", mostRecentGameInfo.zzGg()).zzg("GameFeaturedUri", mostRecentGameInfo.zzGh()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    public int hashCode() {
        return zza(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        MostRecentGameInfoEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.internal.player.MostRecentGameInfo
    public String zzGc() {
        return this.zzbcE;
    }

    @Override // com.google.android.gms.games.internal.player.MostRecentGameInfo
    public String zzGd() {
        return this.zzbcF;
    }

    @Override // com.google.android.gms.games.internal.player.MostRecentGameInfo
    public long zzGe() {
        return this.zzbcG;
    }

    @Override // com.google.android.gms.games.internal.player.MostRecentGameInfo
    public Uri zzGf() {
        return this.zzbcH;
    }

    @Override // com.google.android.gms.games.internal.player.MostRecentGameInfo
    public Uri zzGg() {
        return this.zzbcI;
    }

    @Override // com.google.android.gms.games.internal.player.MostRecentGameInfo
    public Uri zzGh() {
        return this.zzbcJ;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzGi */
    public MostRecentGameInfo mo520freeze() {
        return this;
    }
}
