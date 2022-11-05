package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.awareness.fence.FenceState;
/* loaded from: classes.dex */
public class zzaet extends FenceState {
    public static final Parcelable.Creator<zzaet> CREATOR = new zzaeu();
    public final int zzaJt;
    public final long zzaJu;
    public final String zzaJv;
    public final int zzaJw;

    public zzaet(int i, long j, String str, int i2) {
        this.zzaJt = i;
        this.zzaJu = j;
        this.zzaJv = str;
        this.zzaJw = i2;
    }

    public static FenceState extract(Intent intent) {
        return new zzaet(intent.getIntExtra("context_fence_current_state", 0), intent.getLongExtra("context_fence_last_updated_time", 0L), intent.getStringExtra("context_fence_key"), intent.getIntExtra("context_fence_previous_state", 0));
    }

    @Override // com.google.android.gms.awareness.fence.FenceState
    public int getCurrentState() {
        return this.zzaJt;
    }

    @Override // com.google.android.gms.awareness.fence.FenceState
    public String getFenceKey() {
        return this.zzaJv;
    }

    @Override // com.google.android.gms.awareness.fence.FenceState
    public long getLastFenceUpdateTimeMillis() {
        return this.zzaJu;
    }

    @Override // com.google.android.gms.awareness.fence.FenceState
    public int getPreviousState() {
        return this.zzaJw;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaeu.zza(this, parcel, i);
    }
}
