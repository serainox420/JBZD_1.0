package com.google.android.gms.games.multiplayer;

import com.google.android.gms.common.data.AbstractDataBuffer;
/* loaded from: classes2.dex */
public final class ParticipantBuffer extends AbstractDataBuffer<Participant> {
    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* renamed from: get */
    public Participant mo547get(int i) {
        return new ParticipantRef(this.zzaBi, i);
    }
}
