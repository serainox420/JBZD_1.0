package com.google.android.gms.games.quest;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.games.internal.GamesLog;
/* loaded from: classes2.dex */
public final class MilestoneRef extends zzc implements Milestone {
    /* JADX INFO: Access modifiers changed from: package-private */
    public MilestoneRef(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    private long zzGv() {
        return getLong("initial_value");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return MilestoneEntity.zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: freeze */
    public Milestone mo520freeze() {
        return new MilestoneEntity(this);
    }

    @Override // com.google.android.gms.games.quest.Milestone
    public byte[] getCompletionRewardData() {
        return getByteArray("completion_reward_data");
    }

    @Override // com.google.android.gms.games.quest.Milestone
    public long getCurrentProgress() {
        long j;
        long j2 = 0;
        switch (getState()) {
            case 1:
                j = 0;
                break;
            case 2:
                j = getLong("current_value");
                if (getLong("quest_state") != 6) {
                    j -= zzGv();
                    break;
                }
                break;
            case 3:
            case 4:
                j = getTargetProgress();
                break;
            default:
                j = 0;
                break;
        }
        if (j < 0) {
            GamesLog.zzG("MilestoneRef", "Current progress should never be negative");
        } else {
            j2 = j;
        }
        if (j2 > getTargetProgress()) {
            GamesLog.zzG("MilestoneRef", "Current progress should never exceed target progress");
            return getTargetProgress();
        }
        return j2;
    }

    @Override // com.google.android.gms.games.quest.Milestone
    public String getEventId() {
        return getString("external_event_id");
    }

    @Override // com.google.android.gms.games.quest.Milestone
    public String getMilestoneId() {
        return getString("external_milestone_id");
    }

    @Override // com.google.android.gms.games.quest.Milestone
    public int getState() {
        return getInteger("milestone_state");
    }

    @Override // com.google.android.gms.games.quest.Milestone
    public long getTargetProgress() {
        return getLong("target_value");
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return MilestoneEntity.zza(this);
    }

    public String toString() {
        return MilestoneEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((MilestoneEntity) ((Milestone) mo520freeze())).writeToParcel(parcel, i);
    }
}
