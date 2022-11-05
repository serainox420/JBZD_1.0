package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzc;
import com.google.android.gms.common.util.zzh;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.internal.player.MostRecentGameInfo;
import com.google.android.gms.games.internal.player.MostRecentGameInfoEntity;
/* loaded from: classes2.dex */
public final class PlayerEntity extends GamesDowngradeableSafeParcel implements Player {
    public static final Parcelable.Creator<PlayerEntity> CREATOR = new PlayerEntityCreatorCompat();
    private final String mName;
    private final String zzaXJ;
    private final String zzaXK;
    private final Uri zzaXy;
    private final Uri zzaXz;
    private final long zzaYi;
    private final int zzaYj;
    private final long zzaYk;
    private final MostRecentGameInfoEntity zzaYl;
    private final PlayerLevelInfo zzaYm;
    private final boolean zzaYn;
    private final boolean zzaYo;
    private final String zzaYp;
    private final Uri zzaYq;
    private final String zzaYr;
    private final Uri zzaYs;
    private final String zzaYt;
    private final int zzaYu;
    private final long zzaYv;
    private final boolean zzaaD;
    private String zzakb;
    private final String zzamJ;
    private String zzavw;

    /* loaded from: classes2.dex */
    static final class PlayerEntityCreatorCompat extends PlayerEntityCreator {
        PlayerEntityCreatorCompat() {
        }

        @Override // com.google.android.gms.games.PlayerEntityCreator, android.os.Parcelable.Creator
        /* renamed from: zzfx */
        public PlayerEntity createFromParcel(Parcel parcel) {
            if (PlayerEntity.zzf(PlayerEntity.zzxV()) || PlayerEntity.zzdl(PlayerEntity.class.getCanonicalName())) {
                return super.createFromParcel(parcel);
            }
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            String readString3 = parcel.readString();
            String readString4 = parcel.readString();
            return new PlayerEntity(readString, readString2, readString3 == null ? null : Uri.parse(readString3), readString4 == null ? null : Uri.parse(readString4), parcel.readLong(), -1, -1L, null, null, null, null, null, true, false, parcel.readString(), parcel.readString(), null, null, null, null, -1, -1L, false);
        }
    }

    public PlayerEntity(Player player) {
        this(player, true);
    }

    public PlayerEntity(Player player, boolean z) {
        MostRecentGameInfoEntity mostRecentGameInfoEntity = null;
        this.zzavw = z ? player.getPlayerId() : null;
        this.zzakb = player.getDisplayName();
        this.zzaXy = player.getIconImageUri();
        this.zzaXJ = player.getIconImageUrl();
        this.zzaXz = player.getHiResImageUri();
        this.zzaXK = player.getHiResImageUrl();
        this.zzaYi = player.getRetrievedTimestamp();
        this.zzaYj = player.zzDS();
        this.zzaYk = player.getLastPlayedWithTimestamp();
        this.zzamJ = player.getTitle();
        this.zzaYn = player.zzDT();
        MostRecentGameInfo zzDU = player.zzDU();
        this.zzaYl = zzDU != null ? new MostRecentGameInfoEntity(zzDU) : mostRecentGameInfoEntity;
        this.zzaYm = player.getLevelInfo();
        this.zzaYo = player.zzDR();
        this.zzaYp = player.zzDQ();
        this.mName = player.getName();
        this.zzaYq = player.getBannerImageLandscapeUri();
        this.zzaYr = player.getBannerImageLandscapeUrl();
        this.zzaYs = player.getBannerImagePortraitUri();
        this.zzaYt = player.getBannerImagePortraitUrl();
        this.zzaYu = player.zzDV();
        this.zzaYv = player.zzDW();
        this.zzaaD = player.isMuted();
        if (z) {
            zzc.zzt(this.zzavw);
        }
        zzc.zzt(this.zzakb);
        zzc.zzaw(this.zzaYi > 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PlayerEntity(String str, String str2, Uri uri, Uri uri2, long j, int i, long j2, String str3, String str4, String str5, MostRecentGameInfoEntity mostRecentGameInfoEntity, PlayerLevelInfo playerLevelInfo, boolean z, boolean z2, String str6, String str7, Uri uri3, String str8, Uri uri4, String str9, int i2, long j3, boolean z3) {
        this.zzavw = str;
        this.zzakb = str2;
        this.zzaXy = uri;
        this.zzaXJ = str3;
        this.zzaXz = uri2;
        this.zzaXK = str4;
        this.zzaYi = j;
        this.zzaYj = i;
        this.zzaYk = j2;
        this.zzamJ = str5;
        this.zzaYn = z;
        this.zzaYl = mostRecentGameInfoEntity;
        this.zzaYm = playerLevelInfo;
        this.zzaYo = z2;
        this.zzaYp = str6;
        this.mName = str7;
        this.zzaYq = uri3;
        this.zzaYr = str8;
        this.zzaYs = uri4;
        this.zzaYt = str9;
        this.zzaYu = i2;
        this.zzaYv = j3;
        this.zzaaD = z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(Player player) {
        return zzaa.hashCode(player.getPlayerId(), player.getDisplayName(), Boolean.valueOf(player.zzDR()), player.getIconImageUri(), player.getHiResImageUri(), Long.valueOf(player.getRetrievedTimestamp()), player.getTitle(), player.getLevelInfo(), player.zzDQ(), player.getName(), player.getBannerImageLandscapeUri(), player.getBannerImagePortraitUri(), Integer.valueOf(player.zzDV()), Long.valueOf(player.zzDW()), Boolean.valueOf(player.isMuted()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(Player player, Object obj) {
        if (!(obj instanceof Player)) {
            return false;
        }
        if (player == obj) {
            return true;
        }
        Player player2 = (Player) obj;
        return zzaa.equal(player2.getPlayerId(), player.getPlayerId()) && zzaa.equal(player2.getDisplayName(), player.getDisplayName()) && zzaa.equal(Boolean.valueOf(player2.zzDR()), Boolean.valueOf(player.zzDR())) && zzaa.equal(player2.getIconImageUri(), player.getIconImageUri()) && zzaa.equal(player2.getHiResImageUri(), player.getHiResImageUri()) && zzaa.equal(Long.valueOf(player2.getRetrievedTimestamp()), Long.valueOf(player.getRetrievedTimestamp())) && zzaa.equal(player2.getTitle(), player.getTitle()) && zzaa.equal(player2.getLevelInfo(), player.getLevelInfo()) && zzaa.equal(player2.zzDQ(), player.zzDQ()) && zzaa.equal(player2.getName(), player.getName()) && zzaa.equal(player2.getBannerImageLandscapeUri(), player.getBannerImageLandscapeUri()) && zzaa.equal(player2.getBannerImagePortraitUri(), player.getBannerImagePortraitUri()) && zzaa.equal(Integer.valueOf(player2.zzDV()), Integer.valueOf(player.zzDV())) && zzaa.equal(Long.valueOf(player2.zzDW()), Long.valueOf(player.zzDW())) && zzaa.equal(Boolean.valueOf(player2.isMuted()), Boolean.valueOf(player.isMuted()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(Player player) {
        return zzaa.zzv(player).zzg("PlayerId", player.getPlayerId()).zzg("DisplayName", player.getDisplayName()).zzg("HasDebugAccess", Boolean.valueOf(player.zzDR())).zzg("IconImageUri", player.getIconImageUri()).zzg("IconImageUrl", player.getIconImageUrl()).zzg("HiResImageUri", player.getHiResImageUri()).zzg("HiResImageUrl", player.getHiResImageUrl()).zzg("RetrievedTimestamp", Long.valueOf(player.getRetrievedTimestamp())).zzg("Title", player.getTitle()).zzg("LevelInfo", player.getLevelInfo()).zzg("GamerTag", player.zzDQ()).zzg("Name", player.getName()).zzg("BannerImageLandscapeUri", player.getBannerImageLandscapeUri()).zzg("BannerImageLandscapeUrl", player.getBannerImageLandscapeUrl()).zzg("BannerImagePortraitUri", player.getBannerImagePortraitUri()).zzg("BannerImagePortraitUrl", player.getBannerImagePortraitUrl()).zzg("GamerFriendStatus", Integer.valueOf(player.zzDV())).zzg("GamerFriendUpdateTimestamp", Long.valueOf(player.zzDW())).zzg("IsMuted", Boolean.valueOf(player.isMuted())).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: freeze */
    public Player mo520freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.Player
    public Uri getBannerImageLandscapeUri() {
        return this.zzaYq;
    }

    @Override // com.google.android.gms.games.Player
    public String getBannerImageLandscapeUrl() {
        return this.zzaYr;
    }

    @Override // com.google.android.gms.games.Player
    public Uri getBannerImagePortraitUri() {
        return this.zzaYs;
    }

    @Override // com.google.android.gms.games.Player
    public String getBannerImagePortraitUrl() {
        return this.zzaYt;
    }

    @Override // com.google.android.gms.games.Player
    public String getDisplayName() {
        return this.zzakb;
    }

    @Override // com.google.android.gms.games.Player
    public void getDisplayName(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzakb, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.Player
    public Uri getHiResImageUri() {
        return this.zzaXz;
    }

    @Override // com.google.android.gms.games.Player
    public String getHiResImageUrl() {
        return this.zzaXK;
    }

    @Override // com.google.android.gms.games.Player
    public Uri getIconImageUri() {
        return this.zzaXy;
    }

    @Override // com.google.android.gms.games.Player
    public String getIconImageUrl() {
        return this.zzaXJ;
    }

    @Override // com.google.android.gms.games.Player
    public long getLastPlayedWithTimestamp() {
        return this.zzaYk;
    }

    @Override // com.google.android.gms.games.Player
    public PlayerLevelInfo getLevelInfo() {
        return this.zzaYm;
    }

    @Override // com.google.android.gms.games.Player
    public String getName() {
        return this.mName;
    }

    @Override // com.google.android.gms.games.Player
    public String getPlayerId() {
        return this.zzavw;
    }

    @Override // com.google.android.gms.games.Player
    public long getRetrievedTimestamp() {
        return this.zzaYi;
    }

    @Override // com.google.android.gms.games.Player
    public String getTitle() {
        return this.zzamJ;
    }

    @Override // com.google.android.gms.games.Player
    public void getTitle(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzamJ, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.Player
    public boolean hasHiResImage() {
        return getHiResImageUri() != null;
    }

    @Override // com.google.android.gms.games.Player
    public boolean hasIconImage() {
        return getIconImageUri() != null;
    }

    public int hashCode() {
        return zza(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    @Override // com.google.android.gms.games.Player
    public boolean isMuted() {
        return this.zzaaD;
    }

    public String toString() {
        return zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        PlayerEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.Player
    public String zzDQ() {
        return this.zzaYp;
    }

    @Override // com.google.android.gms.games.Player
    public boolean zzDR() {
        return this.zzaYo;
    }

    @Override // com.google.android.gms.games.Player
    public int zzDS() {
        return this.zzaYj;
    }

    @Override // com.google.android.gms.games.Player
    public boolean zzDT() {
        return this.zzaYn;
    }

    @Override // com.google.android.gms.games.Player
    public MostRecentGameInfo zzDU() {
        return this.zzaYl;
    }

    @Override // com.google.android.gms.games.Player
    public int zzDV() {
        return this.zzaYu;
    }

    @Override // com.google.android.gms.games.Player
    public long zzDW() {
        return this.zzaYv;
    }
}
