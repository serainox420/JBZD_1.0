package com.google.android.gms.games.internal.experience;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class ExperienceEventEntity extends GamesAbstractSafeParcelable implements ExperienceEvent {
    public static final Parcelable.Creator<ExperienceEventEntity> CREATOR = new ExperienceEventEntityCreator();
    private final String zzaXJ;
    private final Uri zzaXy;
    private final int zzakD;
    private final long zzbcA;
    private final int zzbcB;
    private final String zzbcu;
    private final GameEntity zzbcv;
    private final String zzbcw;
    private final String zzbcx;
    private final long zzbcy;
    private final long zzbcz;

    public ExperienceEventEntity(ExperienceEvent experienceEvent) {
        this.zzbcu = experienceEvent.zzFG();
        this.zzbcv = new GameEntity(experienceEvent.getGame());
        this.zzbcw = experienceEvent.zzFH();
        this.zzbcx = experienceEvent.zzFI();
        this.zzaXJ = experienceEvent.getIconImageUrl();
        this.zzaXy = experienceEvent.getIconImageUri();
        this.zzbcy = experienceEvent.zzFJ();
        this.zzbcz = experienceEvent.zzFK();
        this.zzbcA = experienceEvent.zzFL();
        this.zzakD = experienceEvent.getType();
        this.zzbcB = experienceEvent.zzFM();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ExperienceEventEntity(String str, GameEntity gameEntity, String str2, String str3, String str4, Uri uri, long j, long j2, long j3, int i, int i2) {
        this.zzbcu = str;
        this.zzbcv = gameEntity;
        this.zzbcw = str2;
        this.zzbcx = str3;
        this.zzaXJ = str4;
        this.zzaXy = uri;
        this.zzbcy = j;
        this.zzbcz = j2;
        this.zzbcA = j3;
        this.zzakD = i;
        this.zzbcB = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(ExperienceEvent experienceEvent) {
        return zzaa.hashCode(experienceEvent.zzFG(), experienceEvent.getGame(), experienceEvent.zzFH(), experienceEvent.zzFI(), experienceEvent.getIconImageUrl(), experienceEvent.getIconImageUri(), Long.valueOf(experienceEvent.zzFJ()), Long.valueOf(experienceEvent.zzFK()), Long.valueOf(experienceEvent.zzFL()), Integer.valueOf(experienceEvent.getType()), Integer.valueOf(experienceEvent.zzFM()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(ExperienceEvent experienceEvent, Object obj) {
        if (!(obj instanceof ExperienceEvent)) {
            return false;
        }
        if (experienceEvent == obj) {
            return true;
        }
        ExperienceEvent experienceEvent2 = (ExperienceEvent) obj;
        return zzaa.equal(experienceEvent2.zzFG(), experienceEvent.zzFG()) && zzaa.equal(experienceEvent2.getGame(), experienceEvent.getGame()) && zzaa.equal(experienceEvent2.zzFH(), experienceEvent.zzFH()) && zzaa.equal(experienceEvent2.zzFI(), experienceEvent.zzFI()) && zzaa.equal(experienceEvent2.getIconImageUrl(), experienceEvent.getIconImageUrl()) && zzaa.equal(experienceEvent2.getIconImageUri(), experienceEvent.getIconImageUri()) && zzaa.equal(Long.valueOf(experienceEvent2.zzFJ()), Long.valueOf(experienceEvent.zzFJ())) && zzaa.equal(Long.valueOf(experienceEvent2.zzFK()), Long.valueOf(experienceEvent.zzFK())) && zzaa.equal(Long.valueOf(experienceEvent2.zzFL()), Long.valueOf(experienceEvent.zzFL())) && zzaa.equal(Integer.valueOf(experienceEvent2.getType()), Integer.valueOf(experienceEvent.getType())) && zzaa.equal(Integer.valueOf(experienceEvent2.zzFM()), Integer.valueOf(experienceEvent.zzFM()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(ExperienceEvent experienceEvent) {
        return zzaa.zzv(experienceEvent).zzg("ExperienceId", experienceEvent.zzFG()).zzg("Game", experienceEvent.getGame()).zzg("DisplayTitle", experienceEvent.zzFH()).zzg("DisplayDescription", experienceEvent.zzFI()).zzg("IconImageUrl", experienceEvent.getIconImageUrl()).zzg("IconImageUri", experienceEvent.getIconImageUri()).zzg("CreatedTimestamp", Long.valueOf(experienceEvent.zzFJ())).zzg("XpEarned", Long.valueOf(experienceEvent.zzFK())).zzg("CurrentXp", Long.valueOf(experienceEvent.zzFL())).zzg("Type", Integer.valueOf(experienceEvent.getType())).zzg("NewLevel", Integer.valueOf(experienceEvent.zzFM())).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public Game getGame() {
        return this.zzbcv;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public Uri getIconImageUri() {
        return this.zzaXy;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public String getIconImageUrl() {
        return this.zzaXJ;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public int getType() {
        return this.zzakD;
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
        ExperienceEventEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public String zzFG() {
        return this.zzbcu;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public String zzFH() {
        return this.zzbcw;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public String zzFI() {
        return this.zzbcx;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public long zzFJ() {
        return this.zzbcy;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public long zzFK() {
        return this.zzbcz;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public long zzFL() {
        return this.zzbcA;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public int zzFM() {
        return this.zzbcB;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzFN */
    public ExperienceEvent mo520freeze() {
        return this;
    }
}
