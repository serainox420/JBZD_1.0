package com.google.android.gms.games.request;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzf;
/* loaded from: classes2.dex */
public final class GameRequestBuffer extends zzf<GameRequest> {
    public GameRequestBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.data.zzf
    /* renamed from: zzx */
    public GameRequest zzo(int i, int i2) {
        return new GameRequestRef(this.zzaBi, i, i2);
    }

    @Override // com.google.android.gms.common.data.zzf
    protected String zzxn() {
        return "external_request_id";
    }
}
