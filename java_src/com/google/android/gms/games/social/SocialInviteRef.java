package com.google.android.gms.games.social;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;
/* loaded from: classes2.dex */
public final class SocialInviteRef extends zzc implements SocialInvite {
    private final Player zzbfD;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SocialInviteRef(DataHolder dataHolder, int i) {
        super(dataHolder, i);
        this.zzbfD = new PlayerRef(dataHolder, i);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return SocialInviteEntity.zza(this, obj);
    }

    @Override // com.google.android.gms.games.social.SocialInvite
    public int getDirection() {
        return getInteger("direction");
    }

    @Override // com.google.android.gms.games.social.SocialInvite
    public long getLastModifiedTimestamp() {
        return getLong("last_modified_timestamp");
    }

    @Override // com.google.android.gms.games.social.SocialInvite
    public Player getPlayer() {
        return this.zzbfD;
    }

    @Override // com.google.android.gms.games.social.SocialInvite
    public int getType() {
        return getInteger("type");
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return SocialInviteEntity.zza(this);
    }

    public String toString() {
        return SocialInviteEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((SocialInviteEntity) ((SocialInvite) mo520freeze())).writeToParcel(parcel, i);
    }

    @Override // com.google.android.gms.games.social.SocialInvite
    public String zzGA() {
        return getString("external_social_invite_id");
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzGB */
    public SocialInvite mo520freeze() {
        return new SocialInviteEntity(this);
    }
}
