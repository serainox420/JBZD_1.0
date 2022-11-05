package com.google.android.gms.games.multiplayer.realtime;

import android.os.Bundle;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.games.multiplayer.realtime.RoomConfig;
/* loaded from: classes2.dex */
public final class RoomConfigImpl extends RoomConfig {
    private final String zzaij;
    private final int zzbei;
    private final RoomUpdateListener zzbet;
    private final RoomStatusUpdateListener zzbeu;
    private final RealTimeMessageReceivedListener zzbev;
    private final Bundle zzbey;
    private final String[] zzbez;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RoomConfigImpl(RoomConfig.Builder builder) {
        this.zzbet = builder.zzbet;
        this.zzbeu = builder.zzbeu;
        this.zzbev = builder.zzbev;
        this.zzaij = builder.zzbew;
        this.zzbei = builder.zzbei;
        this.zzbey = builder.zzbey;
        this.zzbez = (String[]) builder.zzbex.toArray(new String[builder.zzbex.size()]);
        zzac.zzb(this.zzbev, "Must specify a message listener");
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RoomConfig
    public Bundle getAutoMatchCriteria() {
        return this.zzbey;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RoomConfig
    public String getInvitationId() {
        return this.zzaij;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RoomConfig
    public String[] getInvitedPlayerIds() {
        return this.zzbez;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RoomConfig
    public RealTimeMessageReceivedListener getMessageReceivedListener() {
        return this.zzbev;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RoomConfig
    public RoomStatusUpdateListener getRoomStatusUpdateListener() {
        return this.zzbeu;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RoomConfig
    public RoomUpdateListener getRoomUpdateListener() {
        return this.zzbet;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.RoomConfig
    public int getVariant() {
        return this.zzbei;
    }
}
