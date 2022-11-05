package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zzh;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
/* loaded from: classes2.dex */
public final class GameEntity extends GamesDowngradeableSafeParcel implements Game {
    public static final Parcelable.Creator<GameEntity> CREATOR = new GameEntityCreatorCompat();
    private final boolean zzPl;
    private final Uri zzaXA;
    private final boolean zzaXB;
    private final boolean zzaXC;
    private final String zzaXD;
    private final int zzaXE;
    private final int zzaXF;
    private final int zzaXG;
    private final boolean zzaXH;
    private final boolean zzaXI;
    private final String zzaXJ;
    private final String zzaXK;
    private final String zzaXL;
    private final boolean zzaXM;
    private final boolean zzaXN;
    private final String zzaXO;
    private final boolean zzaXP;
    private final String zzaXv;
    private final String zzaXw;
    private final String zzaXx;
    private final Uri zzaXy;
    private final Uri zzaXz;
    private final String zzade;
    private final String zzakb;
    private final String zzamX;

    /* loaded from: classes2.dex */
    static final class GameEntityCreatorCompat extends GameEntityCreator {
        GameEntityCreatorCompat() {
        }

        @Override // com.google.android.gms.games.GameEntityCreator, android.os.Parcelable.Creator
        /* renamed from: zzfw */
        public GameEntity createFromParcel(Parcel parcel) {
            if (GameEntity.zzf(GameEntity.zzxV()) || GameEntity.zzdl(GameEntity.class.getCanonicalName())) {
                return super.createFromParcel(parcel);
            }
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            String readString3 = parcel.readString();
            String readString4 = parcel.readString();
            String readString5 = parcel.readString();
            String readString6 = parcel.readString();
            String readString7 = parcel.readString();
            Uri parse = readString7 == null ? null : Uri.parse(readString7);
            String readString8 = parcel.readString();
            Uri parse2 = readString8 == null ? null : Uri.parse(readString8);
            String readString9 = parcel.readString();
            return new GameEntity(readString, readString2, readString3, readString4, readString5, readString6, parse, parse2, readString9 == null ? null : Uri.parse(readString9), parcel.readInt() > 0, parcel.readInt() > 0, parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), false, false, null, null, null, false, false, false, null, false);
        }
    }

    public GameEntity(Game game) {
        this.zzamX = game.getApplicationId();
        this.zzaXv = game.getPrimaryCategory();
        this.zzaXw = game.getSecondaryCategory();
        this.zzade = game.getDescription();
        this.zzaXx = game.getDeveloperName();
        this.zzakb = game.getDisplayName();
        this.zzaXy = game.getIconImageUri();
        this.zzaXJ = game.getIconImageUrl();
        this.zzaXz = game.getHiResImageUri();
        this.zzaXK = game.getHiResImageUrl();
        this.zzaXA = game.getFeaturedImageUri();
        this.zzaXL = game.getFeaturedImageUrl();
        this.zzaXB = game.zzDJ();
        this.zzaXC = game.zzDL();
        this.zzaXD = game.zzDM();
        this.zzaXE = 1;
        this.zzaXF = game.getAchievementTotalCount();
        this.zzaXG = game.getLeaderboardCount();
        this.zzaXH = game.isRealTimeMultiplayerEnabled();
        this.zzaXI = game.isTurnBasedMultiplayerEnabled();
        this.zzPl = game.isMuted();
        this.zzaXM = game.zzDK();
        this.zzaXN = game.areSnapshotsEnabled();
        this.zzaXO = game.getThemeColor();
        this.zzaXP = game.hasGamepadSupport();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GameEntity(String str, String str2, String str3, String str4, String str5, String str6, Uri uri, Uri uri2, Uri uri3, boolean z, boolean z2, String str7, int i, int i2, int i3, boolean z3, boolean z4, String str8, String str9, String str10, boolean z5, boolean z6, boolean z7, String str11, boolean z8) {
        this.zzamX = str;
        this.zzakb = str2;
        this.zzaXv = str3;
        this.zzaXw = str4;
        this.zzade = str5;
        this.zzaXx = str6;
        this.zzaXy = uri;
        this.zzaXJ = str8;
        this.zzaXz = uri2;
        this.zzaXK = str9;
        this.zzaXA = uri3;
        this.zzaXL = str10;
        this.zzaXB = z;
        this.zzaXC = z2;
        this.zzaXD = str7;
        this.zzaXE = i;
        this.zzaXF = i2;
        this.zzaXG = i3;
        this.zzaXH = z3;
        this.zzaXI = z4;
        this.zzPl = z5;
        this.zzaXM = z6;
        this.zzaXN = z7;
        this.zzaXO = str11;
        this.zzaXP = z8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(Game game) {
        return zzaa.hashCode(game.getApplicationId(), game.getDisplayName(), game.getPrimaryCategory(), game.getSecondaryCategory(), game.getDescription(), game.getDeveloperName(), game.getIconImageUri(), game.getHiResImageUri(), game.getFeaturedImageUri(), Boolean.valueOf(game.zzDJ()), Boolean.valueOf(game.zzDL()), game.zzDM(), Integer.valueOf(game.getAchievementTotalCount()), Integer.valueOf(game.getLeaderboardCount()), Boolean.valueOf(game.isRealTimeMultiplayerEnabled()), Boolean.valueOf(game.isTurnBasedMultiplayerEnabled()), Boolean.valueOf(game.isMuted()), Boolean.valueOf(game.zzDK()), Boolean.valueOf(game.areSnapshotsEnabled()), game.getThemeColor(), Boolean.valueOf(game.hasGamepadSupport()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(Game game, Object obj) {
        if (!(obj instanceof Game)) {
            return false;
        }
        if (game == obj) {
            return true;
        }
        Game game2 = (Game) obj;
        if (zzaa.equal(game2.getApplicationId(), game.getApplicationId()) && zzaa.equal(game2.getDisplayName(), game.getDisplayName()) && zzaa.equal(game2.getPrimaryCategory(), game.getPrimaryCategory()) && zzaa.equal(game2.getSecondaryCategory(), game.getSecondaryCategory()) && zzaa.equal(game2.getDescription(), game.getDescription()) && zzaa.equal(game2.getDeveloperName(), game.getDeveloperName()) && zzaa.equal(game2.getIconImageUri(), game.getIconImageUri()) && zzaa.equal(game2.getHiResImageUri(), game.getHiResImageUri()) && zzaa.equal(game2.getFeaturedImageUri(), game.getFeaturedImageUri()) && zzaa.equal(Boolean.valueOf(game2.zzDJ()), Boolean.valueOf(game.zzDJ())) && zzaa.equal(Boolean.valueOf(game2.zzDL()), Boolean.valueOf(game.zzDL())) && zzaa.equal(game2.zzDM(), game.zzDM()) && zzaa.equal(Integer.valueOf(game2.getAchievementTotalCount()), Integer.valueOf(game.getAchievementTotalCount())) && zzaa.equal(Integer.valueOf(game2.getLeaderboardCount()), Integer.valueOf(game.getLeaderboardCount())) && zzaa.equal(Boolean.valueOf(game2.isRealTimeMultiplayerEnabled()), Boolean.valueOf(game.isRealTimeMultiplayerEnabled()))) {
            if (zzaa.equal(Boolean.valueOf(game2.isTurnBasedMultiplayerEnabled()), Boolean.valueOf(game.isTurnBasedMultiplayerEnabled() && zzaa.equal(Boolean.valueOf(game2.isMuted()), Boolean.valueOf(game.isMuted())) && zzaa.equal(Boolean.valueOf(game2.zzDK()), Boolean.valueOf(game.zzDK())))) && zzaa.equal(Boolean.valueOf(game2.areSnapshotsEnabled()), Boolean.valueOf(game.areSnapshotsEnabled())) && zzaa.equal(game2.getThemeColor(), game.getThemeColor()) && zzaa.equal(Boolean.valueOf(game2.hasGamepadSupport()), Boolean.valueOf(game.hasGamepadSupport()))) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(Game game) {
        return zzaa.zzv(game).zzg("ApplicationId", game.getApplicationId()).zzg("DisplayName", game.getDisplayName()).zzg("PrimaryCategory", game.getPrimaryCategory()).zzg("SecondaryCategory", game.getSecondaryCategory()).zzg("Description", game.getDescription()).zzg("DeveloperName", game.getDeveloperName()).zzg("IconImageUri", game.getIconImageUri()).zzg("IconImageUrl", game.getIconImageUrl()).zzg("HiResImageUri", game.getHiResImageUri()).zzg("HiResImageUrl", game.getHiResImageUrl()).zzg("FeaturedImageUri", game.getFeaturedImageUri()).zzg("FeaturedImageUrl", game.getFeaturedImageUrl()).zzg("PlayEnabledGame", Boolean.valueOf(game.zzDJ())).zzg("InstanceInstalled", Boolean.valueOf(game.zzDL())).zzg("InstancePackageName", game.zzDM()).zzg("AchievementTotalCount", Integer.valueOf(game.getAchievementTotalCount())).zzg("LeaderboardCount", Integer.valueOf(game.getLeaderboardCount())).zzg("RealTimeMultiplayerEnabled", Boolean.valueOf(game.isRealTimeMultiplayerEnabled())).zzg("TurnBasedMultiplayerEnabled", Boolean.valueOf(game.isTurnBasedMultiplayerEnabled())).zzg("AreSnapshotsEnabled", Boolean.valueOf(game.areSnapshotsEnabled())).zzg("ThemeColor", game.getThemeColor()).zzg("HasGamepadSupport", Boolean.valueOf(game.hasGamepadSupport())).toString();
    }

    @Override // com.google.android.gms.games.Game
    public boolean areSnapshotsEnabled() {
        return this.zzaXN;
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: freeze */
    public Game mo520freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.Game
    public int getAchievementTotalCount() {
        return this.zzaXF;
    }

    @Override // com.google.android.gms.games.Game
    public String getApplicationId() {
        return this.zzamX;
    }

    @Override // com.google.android.gms.games.Game
    public String getDescription() {
        return this.zzade;
    }

    @Override // com.google.android.gms.games.Game
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzade, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.Game
    public String getDeveloperName() {
        return this.zzaXx;
    }

    @Override // com.google.android.gms.games.Game
    public void getDeveloperName(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzaXx, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.Game
    public String getDisplayName() {
        return this.zzakb;
    }

    @Override // com.google.android.gms.games.Game
    public void getDisplayName(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzakb, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.Game
    public Uri getFeaturedImageUri() {
        return this.zzaXA;
    }

    @Override // com.google.android.gms.games.Game
    public String getFeaturedImageUrl() {
        return this.zzaXL;
    }

    @Override // com.google.android.gms.games.Game
    public Uri getHiResImageUri() {
        return this.zzaXz;
    }

    @Override // com.google.android.gms.games.Game
    public String getHiResImageUrl() {
        return this.zzaXK;
    }

    @Override // com.google.android.gms.games.Game
    public Uri getIconImageUri() {
        return this.zzaXy;
    }

    @Override // com.google.android.gms.games.Game
    public String getIconImageUrl() {
        return this.zzaXJ;
    }

    @Override // com.google.android.gms.games.Game
    public int getLeaderboardCount() {
        return this.zzaXG;
    }

    @Override // com.google.android.gms.games.Game
    public String getPrimaryCategory() {
        return this.zzaXv;
    }

    @Override // com.google.android.gms.games.Game
    public String getSecondaryCategory() {
        return this.zzaXw;
    }

    @Override // com.google.android.gms.games.Game
    public String getThemeColor() {
        return this.zzaXO;
    }

    @Override // com.google.android.gms.games.Game
    public boolean hasGamepadSupport() {
        return this.zzaXP;
    }

    public int hashCode() {
        return zza(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    @Override // com.google.android.gms.games.Game
    public boolean isMuted() {
        return this.zzPl;
    }

    @Override // com.google.android.gms.games.Game
    public boolean isRealTimeMultiplayerEnabled() {
        return this.zzaXH;
    }

    @Override // com.google.android.gms.games.Game
    public boolean isTurnBasedMultiplayerEnabled() {
        return this.zzaXI;
    }

    public String toString() {
        return zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        GameEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.Game
    public boolean zzDJ() {
        return this.zzaXB;
    }

    @Override // com.google.android.gms.games.Game
    public boolean zzDK() {
        return this.zzaXM;
    }

    @Override // com.google.android.gms.games.Game
    public boolean zzDL() {
        return this.zzaXC;
    }

    @Override // com.google.android.gms.games.Game
    public String zzDM() {
        return this.zzaXD;
    }

    public int zzDN() {
        return this.zzaXE;
    }
}
