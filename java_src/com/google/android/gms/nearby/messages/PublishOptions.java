package com.google.android.gms.nearby.messages;

import com.google.android.gms.common.internal.zzac;
/* loaded from: classes2.dex */
public final class PublishOptions {
    public static final PublishOptions DEFAULT = new Builder().build();
    private final Strategy zzbzN;
    private final PublishCallback zzbzO;

    /* loaded from: classes2.dex */
    public static class Builder {
        private Strategy zzbzN = Strategy.DEFAULT;
        private PublishCallback zzbzO;

        public PublishOptions build() {
            return new PublishOptions(this.zzbzN, this.zzbzO);
        }

        public Builder setCallback(PublishCallback publishCallback) {
            this.zzbzO = (PublishCallback) zzac.zzw(publishCallback);
            return this;
        }

        public Builder setStrategy(Strategy strategy) {
            this.zzbzN = (Strategy) zzac.zzw(strategy);
            return this;
        }
    }

    private PublishOptions(Strategy strategy, PublishCallback publishCallback) {
        this.zzbzN = strategy;
        this.zzbzO = publishCallback;
    }

    public PublishCallback getCallback() {
        return this.zzbzO;
    }

    public Strategy getStrategy() {
        return this.zzbzN;
    }
}
