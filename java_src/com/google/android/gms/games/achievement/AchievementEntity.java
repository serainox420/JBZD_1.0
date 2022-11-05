package com.google.android.gms.games.achievement;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzc;
import com.google.android.gms.common.util.zzh;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class AchievementEntity extends GamesAbstractSafeParcelable implements Achievement {
    public static final Parcelable.Creator<AchievementEntity> CREATOR = new AchievementEntityCreator();
    private final String mName;
    private final int mState;
    private final String zzaYF;
    private final Uri zzaYG;
    private final String zzaYH;
    private final Uri zzaYI;
    private final String zzaYJ;
    private final int zzaYK;
    private final String zzaYL;
    private final PlayerEntity zzaYM;
    private final int zzaYN;
    private final String zzaYO;
    private final long zzaYP;
    private final long zzaYQ;
    private final String zzade;
    private final int zzakD;

    public AchievementEntity(Achievement achievement) {
        this.zzaYF = achievement.getAchievementId();
        this.zzakD = achievement.getType();
        this.mName = achievement.getName();
        this.zzade = achievement.getDescription();
        this.zzaYG = achievement.getUnlockedImageUri();
        this.zzaYH = achievement.getUnlockedImageUrl();
        this.zzaYI = achievement.getRevealedImageUri();
        this.zzaYJ = achievement.getRevealedImageUrl();
        this.zzaYM = (PlayerEntity) achievement.getPlayer().mo520freeze();
        this.mState = achievement.getState();
        this.zzaYP = achievement.getLastUpdatedTimestamp();
        this.zzaYQ = achievement.getXpValue();
        if (achievement.getType() == 1) {
            this.zzaYK = achievement.getTotalSteps();
            this.zzaYL = achievement.getFormattedTotalSteps();
            this.zzaYN = achievement.getCurrentSteps();
            this.zzaYO = achievement.getFormattedCurrentSteps();
        } else {
            this.zzaYK = 0;
            this.zzaYL = null;
            this.zzaYN = 0;
            this.zzaYO = null;
        }
        zzc.zzt(this.zzaYF);
        zzc.zzt(this.zzade);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AchievementEntity(String str, int i, String str2, String str3, Uri uri, String str4, Uri uri2, String str5, int i2, String str6, PlayerEntity playerEntity, int i3, int i4, String str7, long j, long j2) {
        this.zzaYF = str;
        this.zzakD = i;
        this.mName = str2;
        this.zzade = str3;
        this.zzaYG = uri;
        this.zzaYH = str4;
        this.zzaYI = uri2;
        this.zzaYJ = str5;
        this.zzaYK = i2;
        this.zzaYL = str6;
        this.zzaYM = playerEntity;
        this.mState = i3;
        this.zzaYN = i4;
        this.zzaYO = str7;
        this.zzaYP = j;
        this.zzaYQ = j2;
    }

    static int zza(Achievement achievement) {
        int i;
        int i2;
        if (achievement.getType() == 1) {
            i2 = achievement.getCurrentSteps();
            i = achievement.getTotalSteps();
        } else {
            i = 0;
            i2 = 0;
        }
        return zzaa.hashCode(achievement.getAchievementId(), achievement.getName(), Integer.valueOf(achievement.getType()), achievement.getDescription(), Long.valueOf(achievement.getXpValue()), Integer.valueOf(achievement.getState()), Long.valueOf(achievement.getLastUpdatedTimestamp()), achievement.getPlayer(), Integer.valueOf(i2), Integer.valueOf(i));
    }

    static boolean zza(Achievement achievement, Object obj) {
        boolean z;
        boolean z2;
        if (!(obj instanceof Achievement)) {
            return false;
        }
        if (achievement == obj) {
            return true;
        }
        Achievement achievement2 = (Achievement) obj;
        if (achievement.getType() == 1) {
            z2 = zzaa.equal(Integer.valueOf(achievement2.getCurrentSteps()), Integer.valueOf(achievement.getCurrentSteps()));
            z = zzaa.equal(Integer.valueOf(achievement2.getTotalSteps()), Integer.valueOf(achievement.getTotalSteps()));
        } else {
            z = true;
            z2 = true;
        }
        return zzaa.equal(achievement2.getAchievementId(), achievement.getAchievementId()) && zzaa.equal(achievement2.getName(), achievement.getName()) && zzaa.equal(Integer.valueOf(achievement2.getType()), Integer.valueOf(achievement.getType())) && zzaa.equal(achievement2.getDescription(), achievement.getDescription()) && zzaa.equal(Long.valueOf(achievement2.getXpValue()), Long.valueOf(achievement.getXpValue())) && zzaa.equal(Integer.valueOf(achievement2.getState()), Integer.valueOf(achievement.getState())) && zzaa.equal(Long.valueOf(achievement2.getLastUpdatedTimestamp()), Long.valueOf(achievement.getLastUpdatedTimestamp())) && zzaa.equal(achievement2.getPlayer(), achievement.getPlayer()) && z2 && z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(Achievement achievement) {
        zzaa.zza zzg = zzaa.zzv(achievement).zzg("Id", achievement.getAchievementId()).zzg("Type", Integer.valueOf(achievement.getType())).zzg("Name", achievement.getName()).zzg("Description", achievement.getDescription()).zzg("Player", achievement.getPlayer()).zzg("State", Integer.valueOf(achievement.getState()));
        if (achievement.getType() == 1) {
            zzg.zzg("CurrentSteps", Integer.valueOf(achievement.getCurrentSteps()));
            zzg.zzg("TotalSteps", Integer.valueOf(achievement.getTotalSteps()));
        }
        return zzg.toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: freeze */
    public Achievement mo520freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public String getAchievementId() {
        return this.zzaYF;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public int getCurrentSteps() {
        boolean z = true;
        if (getType() != 1) {
            z = false;
        }
        zzc.zzaw(z);
        return zzEf();
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public String getDescription() {
        return this.zzade;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzade, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public String getFormattedCurrentSteps() {
        boolean z = true;
        if (getType() != 1) {
            z = false;
        }
        zzc.zzaw(z);
        return zzEg();
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public void getFormattedCurrentSteps(CharArrayBuffer charArrayBuffer) {
        boolean z = true;
        if (getType() != 1) {
            z = false;
        }
        zzc.zzaw(z);
        zzh.zzb(this.zzaYO, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public String getFormattedTotalSteps() {
        boolean z = true;
        if (getType() != 1) {
            z = false;
        }
        zzc.zzaw(z);
        return zzEe();
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public void getFormattedTotalSteps(CharArrayBuffer charArrayBuffer) {
        boolean z = true;
        if (getType() != 1) {
            z = false;
        }
        zzc.zzaw(z);
        zzh.zzb(this.zzaYL, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public long getLastUpdatedTimestamp() {
        return this.zzaYP;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public String getName() {
        return this.mName;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public void getName(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.mName, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public Player getPlayer() {
        return this.zzaYM;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public Uri getRevealedImageUri() {
        return this.zzaYI;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public String getRevealedImageUrl() {
        return this.zzaYJ;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public int getState() {
        return this.mState;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public int getTotalSteps() {
        boolean z = true;
        if (getType() != 1) {
            z = false;
        }
        zzc.zzaw(z);
        return zzEd();
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public int getType() {
        return this.zzakD;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public Uri getUnlockedImageUri() {
        return this.zzaYG;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public String getUnlockedImageUrl() {
        return this.zzaYH;
    }

    @Override // com.google.android.gms.games.achievement.Achievement
    public long getXpValue() {
        return this.zzaYQ;
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
        AchievementEntityCreator.zza(this, parcel, i);
    }

    public int zzEd() {
        return this.zzaYK;
    }

    public String zzEe() {
        return this.zzaYL;
    }

    public int zzEf() {
        return this.zzaYN;
    }

    public String zzEg() {
        return this.zzaYO;
    }
}
