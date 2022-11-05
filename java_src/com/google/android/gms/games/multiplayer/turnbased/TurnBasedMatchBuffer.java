package com.google.android.gms.games.multiplayer.turnbased;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzf;
/* loaded from: classes2.dex */
public final class TurnBasedMatchBuffer extends zzf<TurnBasedMatch> {
    public TurnBasedMatchBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.data.zzf
    /* renamed from: zzv */
    public TurnBasedMatch zzo(int i, int i2) {
        return new TurnBasedMatchRef(this.zzaBi, i, i2);
    }

    @Override // com.google.android.gms.common.data.zzf
    protected String zzxn() {
        return "external_match_id";
    }
}
