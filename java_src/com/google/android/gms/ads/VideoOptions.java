package com.google.android.gms.ads;

import com.google.android.gms.internal.zzme;
@zzme
/* loaded from: classes.dex */
public final class VideoOptions {
    private final boolean zzrM;

    /* loaded from: classes2.dex */
    public static final class Builder {
        private boolean zzrM = false;

        public VideoOptions build() {
            return new VideoOptions(this);
        }

        public Builder setStartMuted(boolean z) {
            this.zzrM = z;
            return this;
        }
    }

    private VideoOptions(Builder builder) {
        this.zzrM = builder.zzrM;
    }

    public boolean getStartMuted() {
        return this.zzrM;
    }
}
