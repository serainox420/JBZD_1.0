package com.google.android.gms.games.internal.player;

import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes2.dex */
public class StockProfileImageBuffer extends AbstractDataBuffer<StockProfileImage> {
    public StockProfileImageBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* renamed from: zziX */
    public StockProfileImage mo547get(int i) {
        return new StockProfileImageRef(this.zzaBi, i);
    }
}
