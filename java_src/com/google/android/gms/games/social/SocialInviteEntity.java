package com.google.android.gms.games.social;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
/* loaded from: classes2.dex */
public class SocialInviteEntity extends GamesAbstractSafeParcelable implements SocialInvite {
    public static final Parcelable.Creator<SocialInviteEntity> CREATOR = new SocialInviteEntityCreator();
    private final PlayerEntity zzaYM;
    private final int zzakD;
    private final String zzbfB;
    private final int zzbfC;
    private final long zzbft;

    public SocialInviteEntity(SocialInvite socialInvite) {
        this.zzbfB = socialInvite.zzGA();
        Player player = socialInvite.getPlayer();
        this.zzaYM = player == null ? null : (PlayerEntity) player.mo520freeze();
        this.zzakD = socialInvite.getType();
        this.zzbfC = socialInvite.getDirection();
        this.zzbft = socialInvite.getLastModifiedTimestamp();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SocialInviteEntity(String str, PlayerEntity playerEntity, int i, int i2, long j) {
        this.zzbfB = str;
        this.zzaYM = playerEntity;
        this.zzakD = i;
        this.zzbfC = i2;
        this.zzbft = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(SocialInvite socialInvite) {
        return zzaa.hashCode(socialInvite.zzGA(), socialInvite.getPlayer(), Integer.valueOf(socialInvite.getType()), Integer.valueOf(socialInvite.getDirection()), Long.valueOf(socialInvite.getLastModifiedTimestamp()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(SocialInvite socialInvite, Object obj) {
        if (!(obj instanceof SocialInvite)) {
            return false;
        }
        if (socialInvite == obj) {
            return true;
        }
        SocialInvite socialInvite2 = (SocialInvite) obj;
        return zzaa.equal(socialInvite2.zzGA(), socialInvite.zzGA()) && zzaa.equal(socialInvite2.getPlayer(), socialInvite.getPlayer()) && zzaa.equal(Integer.valueOf(socialInvite2.getType()), Integer.valueOf(socialInvite.getType())) && zzaa.equal(Integer.valueOf(socialInvite2.getDirection()), Integer.valueOf(socialInvite.getDirection())) && zzaa.equal(Long.valueOf(socialInvite2.getLastModifiedTimestamp()), Long.valueOf(socialInvite.getLastModifiedTimestamp()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(SocialInvite socialInvite) {
        return zzaa.zzv(socialInvite).zzg("Social Invite ID", socialInvite.zzGA()).zzg("Player", socialInvite.getPlayer()).zzg("Type", Integer.valueOf(socialInvite.getType())).zzg("Direction", Integer.valueOf(socialInvite.getDirection())).zzg("Last Modified Timestamp", Long.valueOf(socialInvite.getLastModifiedTimestamp())).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.social.SocialInvite
    public int getDirection() {
        return this.zzbfC;
    }

    @Override // com.google.android.gms.games.social.SocialInvite
    public long getLastModifiedTimestamp() {
        return this.zzbft;
    }

    @Override // com.google.android.gms.games.social.SocialInvite
    public Player getPlayer() {
        return this.zzaYM;
    }

    @Override // com.google.android.gms.games.social.SocialInvite
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
        SocialInviteEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.social.SocialInvite
    public String zzGA() {
        return this.zzbfB;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzGB */
    public SocialInvite mo520freeze() {
        return this;
    }
}
