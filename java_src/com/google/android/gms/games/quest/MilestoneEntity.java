package com.google.android.gms.games.quest;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class MilestoneEntity extends GamesAbstractSafeParcelable implements Milestone {
    public static final Parcelable.Creator<MilestoneEntity> CREATOR = new MilestoneEntityCreator();
    private final int mState;
    private final String zzaZp;
    private final String zzbaF;
    private final long zzbeS;
    private final long zzbeT;
    private final byte[] zzbeU;

    public MilestoneEntity(Milestone milestone) {
        this.zzbaF = milestone.getMilestoneId();
        this.zzbeS = milestone.getCurrentProgress();
        this.zzbeT = milestone.getTargetProgress();
        this.mState = milestone.getState();
        this.zzaZp = milestone.getEventId();
        byte[] completionRewardData = milestone.getCompletionRewardData();
        if (completionRewardData == null) {
            this.zzbeU = null;
            return;
        }
        this.zzbeU = new byte[completionRewardData.length];
        System.arraycopy(completionRewardData, 0, this.zzbeU, 0, completionRewardData.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MilestoneEntity(String str, long j, long j2, byte[] bArr, int i, String str2) {
        this.zzbaF = str;
        this.zzbeS = j;
        this.zzbeT = j2;
        this.zzbeU = bArr;
        this.mState = i;
        this.zzaZp = str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(Milestone milestone) {
        return zzaa.hashCode(milestone.getMilestoneId(), Long.valueOf(milestone.getCurrentProgress()), Long.valueOf(milestone.getTargetProgress()), Integer.valueOf(milestone.getState()), milestone.getEventId());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(Milestone milestone, Object obj) {
        if (!(obj instanceof Milestone)) {
            return false;
        }
        if (milestone == obj) {
            return true;
        }
        Milestone milestone2 = (Milestone) obj;
        return zzaa.equal(milestone2.getMilestoneId(), milestone.getMilestoneId()) && zzaa.equal(Long.valueOf(milestone2.getCurrentProgress()), Long.valueOf(milestone.getCurrentProgress())) && zzaa.equal(Long.valueOf(milestone2.getTargetProgress()), Long.valueOf(milestone.getTargetProgress())) && zzaa.equal(Integer.valueOf(milestone2.getState()), Integer.valueOf(milestone.getState())) && zzaa.equal(milestone2.getEventId(), milestone.getEventId());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(Milestone milestone) {
        return zzaa.zzv(milestone).zzg("MilestoneId", milestone.getMilestoneId()).zzg("CurrentProgress", Long.valueOf(milestone.getCurrentProgress())).zzg("TargetProgress", Long.valueOf(milestone.getTargetProgress())).zzg("State", Integer.valueOf(milestone.getState())).zzg("CompletionRewardData", milestone.getCompletionRewardData()).zzg("EventId", milestone.getEventId()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: freeze */
    public Milestone mo520freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.quest.Milestone
    public byte[] getCompletionRewardData() {
        return this.zzbeU;
    }

    @Override // com.google.android.gms.games.quest.Milestone
    public long getCurrentProgress() {
        return this.zzbeS;
    }

    @Override // com.google.android.gms.games.quest.Milestone
    public String getEventId() {
        return this.zzaZp;
    }

    @Override // com.google.android.gms.games.quest.Milestone
    public String getMilestoneId() {
        return this.zzbaF;
    }

    @Override // com.google.android.gms.games.quest.Milestone
    public int getState() {
        return this.mState;
    }

    @Override // com.google.android.gms.games.quest.Milestone
    public long getTargetProgress() {
        return this.zzbeT;
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
        MilestoneEntityCreator.zza(this, parcel, i);
    }
}
