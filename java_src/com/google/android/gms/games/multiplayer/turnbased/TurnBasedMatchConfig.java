package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Bundle;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.games.multiplayer.Multiplayer;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public abstract class TurnBasedMatchConfig {

    /* loaded from: classes2.dex */
    public static final class Builder {
        int zzbeH;
        int zzbei;
        ArrayList<String> zzbex;
        Bundle zzbey;

        private Builder() {
            this.zzbei = -1;
            this.zzbex = new ArrayList<>();
            this.zzbey = null;
            this.zzbeH = 2;
        }

        public Builder addInvitedPlayer(String str) {
            zzac.zzw(str);
            this.zzbex.add(str);
            return this;
        }

        public Builder addInvitedPlayers(ArrayList<String> arrayList) {
            zzac.zzw(arrayList);
            this.zzbex.addAll(arrayList);
            return this;
        }

        public TurnBasedMatchConfig build() {
            return new TurnBasedMatchConfigImpl(this);
        }

        public Builder setAutoMatchCriteria(Bundle bundle) {
            this.zzbey = bundle;
            return this;
        }

        public Builder setVariant(int i) {
            zzac.zzb(i == -1 || i > 0, "Variant must be a positive integer or TurnBasedMatch.MATCH_VARIANT_ANY");
            this.zzbei = i;
            return this;
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    public static Bundle createAutoMatchCriteria(int i, int i2, long j) {
        Bundle bundle = new Bundle();
        bundle.putInt(Multiplayer.EXTRA_MIN_AUTOMATCH_PLAYERS, i);
        bundle.putInt(Multiplayer.EXTRA_MAX_AUTOMATCH_PLAYERS, i2);
        bundle.putLong(Multiplayer.EXTRA_EXCLUSIVE_BIT_MASK, j);
        return bundle;
    }

    public abstract Bundle getAutoMatchCriteria();

    public abstract String[] getInvitedPlayerIds();

    public abstract int getVariant();

    public abstract int zzGu();
}
