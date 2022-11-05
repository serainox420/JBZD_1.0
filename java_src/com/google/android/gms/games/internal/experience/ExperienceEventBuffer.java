package com.google.android.gms.games.internal.experience;

import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes2.dex */
public final class ExperienceEventBuffer extends AbstractDataBuffer<ExperienceEvent> {
    public ExperienceEventBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* renamed from: zziM */
    public ExperienceEvent mo547get(int i) {
        return new ExperienceEventRef(this.zzaBi, i);
    }
}
