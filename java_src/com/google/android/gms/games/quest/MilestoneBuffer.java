package com.google.android.gms.games.quest;

import com.google.android.gms.common.data.AbstractDataBuffer;
/* loaded from: classes2.dex */
public final class MilestoneBuffer extends AbstractDataBuffer<Milestone> {
    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* renamed from: get */
    public Milestone mo547get(int i) {
        return new MilestoneRef(this.zzaBi, i);
    }
}
