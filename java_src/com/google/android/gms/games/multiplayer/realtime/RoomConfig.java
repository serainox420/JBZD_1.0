package com.google.android.gms.games.multiplayer.realtime;

import android.os.Bundle;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.games.multiplayer.Multiplayer;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes2.dex */
public abstract class RoomConfig {

    /* loaded from: classes2.dex */
    public static final class Builder {
        int zzbei;
        final RoomUpdateListener zzbet;
        RoomStatusUpdateListener zzbeu;
        RealTimeMessageReceivedListener zzbev;
        String zzbew;
        ArrayList<String> zzbex;
        Bundle zzbey;

        private Builder(RoomUpdateListener roomUpdateListener) {
            this.zzbew = null;
            this.zzbei = -1;
            this.zzbex = new ArrayList<>();
            this.zzbet = (RoomUpdateListener) zzac.zzb(roomUpdateListener, "Must provide a RoomUpdateListener");
        }

        public Builder addPlayersToInvite(ArrayList<String> arrayList) {
            zzac.zzw(arrayList);
            this.zzbex.addAll(arrayList);
            return this;
        }

        public Builder addPlayersToInvite(String... strArr) {
            zzac.zzw(strArr);
            this.zzbex.addAll(Arrays.asList(strArr));
            return this;
        }

        public RoomConfig build() {
            return new RoomConfigImpl(this);
        }

        public Builder setAutoMatchCriteria(Bundle bundle) {
            this.zzbey = bundle;
            return this;
        }

        public Builder setInvitationIdToAccept(String str) {
            zzac.zzw(str);
            this.zzbew = str;
            return this;
        }

        public Builder setMessageReceivedListener(RealTimeMessageReceivedListener realTimeMessageReceivedListener) {
            this.zzbev = realTimeMessageReceivedListener;
            return this;
        }

        public Builder setRoomStatusUpdateListener(RoomStatusUpdateListener roomStatusUpdateListener) {
            this.zzbeu = roomStatusUpdateListener;
            return this;
        }

        public Builder setVariant(int i) {
            zzac.zzb(i == -1 || i > 0, "Variant must be a positive integer or Room.ROOM_VARIANT_ANY");
            this.zzbei = i;
            return this;
        }
    }

    public static Builder builder(RoomUpdateListener roomUpdateListener) {
        return new Builder(roomUpdateListener);
    }

    public static Bundle createAutoMatchCriteria(int i, int i2, long j) {
        Bundle bundle = new Bundle();
        bundle.putInt(Multiplayer.EXTRA_MIN_AUTOMATCH_PLAYERS, i);
        bundle.putInt(Multiplayer.EXTRA_MAX_AUTOMATCH_PLAYERS, i2);
        bundle.putLong(Multiplayer.EXTRA_EXCLUSIVE_BIT_MASK, j);
        return bundle;
    }

    public abstract Bundle getAutoMatchCriteria();

    public abstract String getInvitationId();

    public abstract String[] getInvitedPlayerIds();

    public abstract RealTimeMessageReceivedListener getMessageReceivedListener();

    public abstract RoomStatusUpdateListener getRoomStatusUpdateListener();

    public abstract RoomUpdateListener getRoomUpdateListener();

    public abstract int getVariant();
}
