package com.google.android.gms.nearby.messages;

import com.google.android.gms.common.internal.zzac;
/* loaded from: classes2.dex */
public final class SubscribeOptions {
    public static final SubscribeOptions DEFAULT = new Builder().build();
    private final MessageFilter zzbAb;
    private final SubscribeCallback zzbAc;
    public final boolean zzbAd;
    public final int zzbAe;
    private final Strategy zzbzN;

    /* loaded from: classes2.dex */
    public static class Builder {
        private SubscribeCallback zzbAc;
        private Strategy zzbzN = Strategy.DEFAULT;
        private MessageFilter zzbAb = MessageFilter.INCLUDE_ALL_MY_TYPES;

        public SubscribeOptions build() {
            return new SubscribeOptions(this.zzbzN, this.zzbAb, this.zzbAc, false, 0);
        }

        public Builder setCallback(SubscribeCallback subscribeCallback) {
            this.zzbAc = (SubscribeCallback) zzac.zzw(subscribeCallback);
            return this;
        }

        public Builder setFilter(MessageFilter messageFilter) {
            this.zzbAb = messageFilter;
            return this;
        }

        public Builder setStrategy(Strategy strategy) {
            this.zzbzN = strategy;
            return this;
        }
    }

    private SubscribeOptions(Strategy strategy, MessageFilter messageFilter, SubscribeCallback subscribeCallback, boolean z, int i) {
        this.zzbzN = strategy;
        this.zzbAb = messageFilter;
        this.zzbAc = subscribeCallback;
        this.zzbAd = z;
        this.zzbAe = i;
    }

    public SubscribeCallback getCallback() {
        return this.zzbAc;
    }

    public MessageFilter getFilter() {
        return this.zzbAb;
    }

    public Strategy getStrategy() {
        return this.zzbzN;
    }
}
