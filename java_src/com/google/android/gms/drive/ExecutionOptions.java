package com.google.android.gms.drive;

import android.text.TextUtils;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.internal.zzahx;
/* loaded from: classes2.dex */
public class ExecutionOptions {
    public static final int CONFLICT_STRATEGY_KEEP_REMOTE = 1;
    public static final int CONFLICT_STRATEGY_OVERWRITE_REMOTE = 0;
    public static final int MAX_TRACKING_TAG_STRING_LENGTH = 65536;
    private final String zzaLc;
    private final boolean zzaLd;
    private final int zzaLe;

    /* loaded from: classes2.dex */
    public static class Builder {
        protected String zzaLc;
        protected boolean zzaLd;
        protected int zzaLe = 0;

        public ExecutionOptions build() {
            zzAx();
            return new ExecutionOptions(this.zzaLc, this.zzaLd, this.zzaLe);
        }

        public Builder setConflictStrategy(int i) {
            if (!ExecutionOptions.zzeh(i)) {
                throw new IllegalArgumentException(new StringBuilder(53).append("Unrecognized value for conflict strategy: ").append(i).toString());
            }
            this.zzaLe = i;
            return this;
        }

        public Builder setNotifyOnCompletion(boolean z) {
            this.zzaLd = z;
            return this;
        }

        public Builder setTrackingTag(String str) {
            if (!ExecutionOptions.zzdE(str)) {
                throw new IllegalArgumentException(String.format("trackingTag must not be null nor empty, and the length must be <= the maximum length (%s)", 65536));
            }
            this.zzaLc = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void zzAx() {
            if (this.zzaLe != 1 || this.zzaLd) {
                return;
            }
            throw new IllegalStateException("Cannot use CONFLICT_STRATEGY_KEEP_REMOTE without requesting completion notifications");
        }
    }

    public ExecutionOptions(String str, boolean z, int i) {
        this.zzaLc = str;
        this.zzaLd = z;
        this.zzaLe = i;
    }

    public static boolean zzdE(String str) {
        return !TextUtils.isEmpty(str) && str.length() <= 65536;
    }

    public static boolean zzeg(int i) {
        switch (i) {
            case 1:
                return true;
            default:
                return false;
        }
    }

    public static boolean zzeh(int i) {
        switch (i) {
            case 0:
            case 1:
                return true;
            default:
                return false;
        }
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        ExecutionOptions executionOptions = (ExecutionOptions) obj;
        return zzaa.equal(this.zzaLc, executionOptions.zzaLc) && this.zzaLe == executionOptions.zzaLe && this.zzaLd == executionOptions.zzaLd;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzaLc, Integer.valueOf(this.zzaLe), Boolean.valueOf(this.zzaLd));
    }

    public String zzAu() {
        return this.zzaLc;
    }

    public boolean zzAv() {
        return this.zzaLd;
    }

    public int zzAw() {
        return this.zzaLe;
    }

    public void zzh(GoogleApiClient googleApiClient) {
        zzahx zzahxVar = (zzahx) googleApiClient.zza(Drive.zzaid);
        if (!zzAv() || zzahxVar.zzBb()) {
            return;
        }
        throw new IllegalStateException("Application must define an exported DriveEventService subclass in AndroidManifest.xml to be notified on completion");
    }
}
