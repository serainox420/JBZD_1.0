package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.games.internal.player.MostRecentGameInfo;
import com.google.android.gms.games.internal.player.MostRecentGameInfoRef;
import com.google.android.gms.games.internal.player.PlayerColumnNames;
/* loaded from: classes2.dex */
public final class PlayerRef extends zzc implements Player {
    private final PlayerColumnNames zzaYD;
    private final MostRecentGameInfoRef zzaYE;
    private final PlayerLevelInfo zzaYm;

    public PlayerRef(DataHolder dataHolder, int i) {
        this(dataHolder, i, null);
    }

    public PlayerRef(DataHolder dataHolder, int i, String str) {
        super(dataHolder, i);
        this.zzaYD = new PlayerColumnNames(str);
        this.zzaYE = new MostRecentGameInfoRef(dataHolder, i, this.zzaYD);
        if (!zzDX()) {
            this.zzaYm = null;
            return;
        }
        int integer = getInteger(this.zzaYD.zzbcU);
        int integer2 = getInteger(this.zzaYD.zzbcX);
        PlayerLevel playerLevel = new PlayerLevel(integer, getLong(this.zzaYD.zzbcV), getLong(this.zzaYD.zzbcW));
        this.zzaYm = new PlayerLevelInfo(getLong(this.zzaYD.zzbcT), getLong(this.zzaYD.zzbcZ), playerLevel, integer != integer2 ? new PlayerLevel(integer2, getLong(this.zzaYD.zzbcW), getLong(this.zzaYD.zzbcY)) : playerLevel);
    }

    private boolean zzDX() {
        return !zzdh(this.zzaYD.zzbcT) && getLong(this.zzaYD.zzbcT) != -1;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return PlayerEntity.zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: freeze */
    public Player mo520freeze() {
        return new PlayerEntity(this);
    }

    @Override // com.google.android.gms.games.Player
    public Uri getBannerImageLandscapeUri() {
        return zzdg(this.zzaYD.zzbdk);
    }

    @Override // com.google.android.gms.games.Player
    public String getBannerImageLandscapeUrl() {
        return getString(this.zzaYD.zzbdl);
    }

    @Override // com.google.android.gms.games.Player
    public Uri getBannerImagePortraitUri() {
        return zzdg(this.zzaYD.zzbdm);
    }

    @Override // com.google.android.gms.games.Player
    public String getBannerImagePortraitUrl() {
        return getString(this.zzaYD.zzbdn);
    }

    @Override // com.google.android.gms.games.Player
    public String getDisplayName() {
        return getString(this.zzaYD.zzbcL);
    }

    @Override // com.google.android.gms.games.Player
    public void getDisplayName(CharArrayBuffer charArrayBuffer) {
        zza(this.zzaYD.zzbcL, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.Player
    public Uri getHiResImageUri() {
        return zzdg(this.zzaYD.zzbcO);
    }

    @Override // com.google.android.gms.games.Player
    public String getHiResImageUrl() {
        return getString(this.zzaYD.zzbcP);
    }

    @Override // com.google.android.gms.games.Player
    public Uri getIconImageUri() {
        return zzdg(this.zzaYD.zzbcM);
    }

    @Override // com.google.android.gms.games.Player
    public String getIconImageUrl() {
        return getString(this.zzaYD.zzbcN);
    }

    @Override // com.google.android.gms.games.Player
    public long getLastPlayedWithTimestamp() {
        if (!zzdf(this.zzaYD.zzbcS) || zzdh(this.zzaYD.zzbcS)) {
            return -1L;
        }
        return getLong(this.zzaYD.zzbcS);
    }

    @Override // com.google.android.gms.games.Player
    public PlayerLevelInfo getLevelInfo() {
        return this.zzaYm;
    }

    @Override // com.google.android.gms.games.Player
    public String getName() {
        return getString(this.zzaYD.name);
    }

    @Override // com.google.android.gms.games.Player
    public String getPlayerId() {
        return getString(this.zzaYD.zzbcK);
    }

    @Override // com.google.android.gms.games.Player
    public long getRetrievedTimestamp() {
        return getLong(this.zzaYD.zzbcQ);
    }

    @Override // com.google.android.gms.games.Player
    public String getTitle() {
        return getString(this.zzaYD.title);
    }

    @Override // com.google.android.gms.games.Player
    public void getTitle(CharArrayBuffer charArrayBuffer) {
        zza(this.zzaYD.title, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.Player
    public boolean hasHiResImage() {
        return getHiResImageUri() != null;
    }

    @Override // com.google.android.gms.games.Player
    public boolean hasIconImage() {
        return getIconImageUri() != null;
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return PlayerEntity.zza(this);
    }

    @Override // com.google.android.gms.games.Player
    public boolean isMuted() {
        return getBoolean(this.zzaYD.zzbdq);
    }

    public String toString() {
        return PlayerEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((PlayerEntity) ((Player) mo520freeze())).writeToParcel(parcel, i);
    }

    @Override // com.google.android.gms.games.Player
    public String zzDQ() {
        return getString(this.zzaYD.zzbdj);
    }

    @Override // com.google.android.gms.games.Player
    public boolean zzDR() {
        return getBoolean(this.zzaYD.zzbdi);
    }

    @Override // com.google.android.gms.games.Player
    public int zzDS() {
        return getInteger(this.zzaYD.zzbcR);
    }

    @Override // com.google.android.gms.games.Player
    public boolean zzDT() {
        return getBoolean(this.zzaYD.zzbdb);
    }

    @Override // com.google.android.gms.games.Player
    public MostRecentGameInfo zzDU() {
        if (zzdh(this.zzaYD.zzbdc)) {
            return null;
        }
        return this.zzaYE;
    }

    @Override // com.google.android.gms.games.Player
    public int zzDV() {
        return getInteger(this.zzaYD.zzbdo);
    }

    @Override // com.google.android.gms.games.Player
    public long zzDW() {
        return getLong(this.zzaYD.zzbdp);
    }
}
