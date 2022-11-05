package com.google.android.gms.games;

import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes2.dex */
public final class GameBuffer extends AbstractDataBuffer<Game> {
    public GameBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* renamed from: get */
    public Game mo547get(int i) {
        return new GameRef(this.zzaBi, i);
    }
}
