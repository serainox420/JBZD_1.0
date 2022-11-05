package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
/* loaded from: classes2.dex */
public final class GameBadgeEntity extends GamesDowngradeableSafeParcel implements GameBadge {
    public static final Parcelable.Creator<GameBadgeEntity> CREATOR = new GameBadgeEntityCreatorCompat();
    private Uri zzaXy;
    private String zzade;
    private int zzakD;
    private String zzamJ;

    /* loaded from: classes2.dex */
    static final class GameBadgeEntityCreatorCompat extends GameBadgeEntityCreator {
        GameBadgeEntityCreatorCompat() {
        }

        @Override // com.google.android.gms.games.internal.game.GameBadgeEntityCreator, android.os.Parcelable.Creator
        /* renamed from: zzfL */
        public GameBadgeEntity createFromParcel(Parcel parcel) {
            if (GameBadgeEntity.zzf(GameBadgeEntity.zzxV()) || GameBadgeEntity.zzdl(GameBadgeEntity.class.getCanonicalName())) {
                return super.createFromParcel(parcel);
            }
            int readInt = parcel.readInt();
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            String readString3 = parcel.readString();
            return new GameBadgeEntity(readInt, readString, readString2, readString3 == null ? null : Uri.parse(readString3));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GameBadgeEntity(int i, String str, String str2, Uri uri) {
        this.zzakD = i;
        this.zzamJ = str;
        this.zzade = str2;
        this.zzaXy = uri;
    }

    public GameBadgeEntity(GameBadge gameBadge) {
        this.zzakD = gameBadge.getType();
        this.zzamJ = gameBadge.getTitle();
        this.zzade = gameBadge.getDescription();
        this.zzaXy = gameBadge.getIconImageUri();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(GameBadge gameBadge) {
        return zzaa.hashCode(Integer.valueOf(gameBadge.getType()), gameBadge.getTitle(), gameBadge.getDescription(), gameBadge.getIconImageUri());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(GameBadge gameBadge, Object obj) {
        if (!(obj instanceof GameBadge)) {
            return false;
        }
        if (gameBadge == obj) {
            return true;
        }
        GameBadge gameBadge2 = (GameBadge) obj;
        return zzaa.equal(Integer.valueOf(gameBadge2.getType()), gameBadge.getTitle()) && zzaa.equal(gameBadge2.getDescription(), gameBadge.getIconImageUri());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(GameBadge gameBadge) {
        return zzaa.zzv(gameBadge).zzg("Type", Integer.valueOf(gameBadge.getType())).zzg("Title", gameBadge.getTitle()).zzg("Description", gameBadge.getDescription()).zzg("IconImageUri", gameBadge.getIconImageUri()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.internal.game.GameBadge
    public String getDescription() {
        return this.zzade;
    }

    @Override // com.google.android.gms.games.internal.game.GameBadge
    public Uri getIconImageUri() {
        return this.zzaXy;
    }

    @Override // com.google.android.gms.games.internal.game.GameBadge
    public String getTitle() {
        return this.zzamJ;
    }

    @Override // com.google.android.gms.games.internal.game.GameBadge
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
        GameBadgeEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzFO */
    public GameBadge mo520freeze() {
        return this;
    }
}
