package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Bundle;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig;
/* loaded from: classes2.dex */
public final class TurnBasedMatchConfigImpl extends TurnBasedMatchConfig {
    private final int zzbeH;
    private final int zzbei;
    private final Bundle zzbey;
    private final String[] zzbez;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TurnBasedMatchConfigImpl(TurnBasedMatchConfig.Builder builder) {
        this.zzbei = builder.zzbei;
        this.zzbeH = builder.zzbeH;
        this.zzbey = builder.zzbey;
        this.zzbez = (String[]) builder.zzbex.toArray(new String[builder.zzbex.size()]);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig
    public Bundle getAutoMatchCriteria() {
        return this.zzbey;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig
    public String[] getInvitedPlayerIds() {
        return this.zzbez;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig
    public int getVariant() {
        return this.zzbei;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig
    public int zzGu() {
        return this.zzbeH;
    }
}
