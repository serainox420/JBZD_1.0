package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.internal.constants.TurnBasedMatchTurnStatus;
import com.google.android.gms.games.multiplayer.InvitationBuffer;
/* loaded from: classes.dex */
public final class LoadMatchesResponse {
    private final InvitationBuffer zzbeD;
    private final TurnBasedMatchBuffer zzbeE;
    private final TurnBasedMatchBuffer zzbeF;
    private final TurnBasedMatchBuffer zzbeG;

    public LoadMatchesResponse(Bundle bundle) {
        DataHolder zzc = zzc(bundle, 0);
        if (zzc != null) {
            this.zzbeD = new InvitationBuffer(zzc);
        } else {
            this.zzbeD = null;
        }
        DataHolder zzc2 = zzc(bundle, 1);
        if (zzc2 != null) {
            this.zzbeE = new TurnBasedMatchBuffer(zzc2);
        } else {
            this.zzbeE = null;
        }
        DataHolder zzc3 = zzc(bundle, 2);
        if (zzc3 != null) {
            this.zzbeF = new TurnBasedMatchBuffer(zzc3);
        } else {
            this.zzbeF = null;
        }
        DataHolder zzc4 = zzc(bundle, 3);
        if (zzc4 != null) {
            this.zzbeG = new TurnBasedMatchBuffer(zzc4);
        } else {
            this.zzbeG = null;
        }
    }

    private static DataHolder zzc(Bundle bundle, int i) {
        String zziL = TurnBasedMatchTurnStatus.zziL(i);
        if (!bundle.containsKey(zziL)) {
            return null;
        }
        return (DataHolder) bundle.getParcelable(zziL);
    }

    @Deprecated
    public void close() {
        release();
    }

    public TurnBasedMatchBuffer getCompletedMatches() {
        return this.zzbeG;
    }

    public InvitationBuffer getInvitations() {
        return this.zzbeD;
    }

    public TurnBasedMatchBuffer getMyTurnMatches() {
        return this.zzbeE;
    }

    public TurnBasedMatchBuffer getTheirTurnMatches() {
        return this.zzbeF;
    }

    public boolean hasData() {
        if (this.zzbeD == null || this.zzbeD.getCount() <= 0) {
            if (this.zzbeE != null && this.zzbeE.getCount() > 0) {
                return true;
            }
            if (this.zzbeF != null && this.zzbeF.getCount() > 0) {
                return true;
            }
            return this.zzbeG != null && this.zzbeG.getCount() > 0;
        }
        return true;
    }

    public void release() {
        if (this.zzbeD != null) {
            this.zzbeD.release();
        }
        if (this.zzbeE != null) {
            this.zzbeE.release();
        }
        if (this.zzbeF != null) {
            this.zzbeF.release();
        }
        if (this.zzbeG != null) {
            this.zzbeG.release();
        }
    }
}
