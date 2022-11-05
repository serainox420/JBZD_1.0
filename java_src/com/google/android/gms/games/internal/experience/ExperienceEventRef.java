package com.google.android.gms.games.internal.experience;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
/* loaded from: classes2.dex */
public final class ExperienceEventRef extends zzc implements ExperienceEvent {
    private final GameRef zzbcC;

    public ExperienceEventRef(DataHolder dataHolder, int i) {
        super(dataHolder, i);
        if (zzdh("external_game_id")) {
            this.zzbcC = null;
        } else {
            this.zzbcC = new GameRef(this.zzaBi, this.zzaDL);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return ExperienceEventEntity.zza(this, obj);
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public Game getGame() {
        return this.zzbcC;
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public Uri getIconImageUri() {
        return zzdg("icon_uri");
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public String getIconImageUrl() {
        return getString("icon_url");
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public int getType() {
        return getInteger("type");
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return ExperienceEventEntity.zza(this);
    }

    public String toString() {
        return ExperienceEventEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((ExperienceEventEntity) ((ExperienceEvent) mo520freeze())).writeToParcel(parcel, i);
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public String zzFG() {
        return getString("external_experience_id");
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public String zzFH() {
        return getString("display_title");
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public String zzFI() {
        return getString("display_description");
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public long zzFJ() {
        return getLong("created_timestamp");
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public long zzFK() {
        return getLong("xp_earned");
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public long zzFL() {
        return getLong("current_xp");
    }

    @Override // com.google.android.gms.games.internal.experience.ExperienceEvent
    public int zzFM() {
        return getInteger("newLevel");
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzFN */
    public ExperienceEvent mo520freeze() {
        return new ExperienceEventEntity(this);
    }
}
