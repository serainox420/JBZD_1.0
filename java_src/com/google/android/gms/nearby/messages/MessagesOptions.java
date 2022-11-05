package com.google.android.gms.nearby.messages;

import com.google.android.gms.common.api.Api;
/* loaded from: classes2.dex */
public class MessagesOptions implements Api.ApiOptions.Optional {
    public final String zzbzI;
    public final boolean zzbzJ;
    public final int zzbzK;
    public final String zzbzL;

    /* loaded from: classes2.dex */
    public static class Builder {
        private int zzbzM = -1;

        public MessagesOptions build() {
            return new MessagesOptions(this);
        }

        public Builder setPermissions(int i) {
            this.zzbzM = i;
            return this;
        }
    }

    private MessagesOptions(Builder builder) {
        this.zzbzI = null;
        this.zzbzJ = false;
        this.zzbzK = builder.zzbzM;
        this.zzbzL = null;
    }
}
