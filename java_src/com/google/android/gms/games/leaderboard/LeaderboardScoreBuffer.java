package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes2.dex */
public final class LeaderboardScoreBuffer extends AbstractDataBuffer<LeaderboardScore> {
    private final LeaderboardScoreBufferHeader zzbdE;

    public LeaderboardScoreBuffer(DataHolder dataHolder) {
        super(dataHolder);
        this.zzbdE = new LeaderboardScoreBufferHeader(dataHolder.zzxf());
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* renamed from: get */
    public LeaderboardScore mo547get(int i) {
        return new LeaderboardScoreRef(this.zzaBi, i);
    }

    public LeaderboardScoreBufferHeader zzGo() {
        return this.zzbdE;
    }
}
