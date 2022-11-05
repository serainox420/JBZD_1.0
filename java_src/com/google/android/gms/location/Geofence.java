package com.google.android.gms.location;

import android.os.SystemClock;
import com.google.android.gms.internal.zzasm;
/* loaded from: classes2.dex */
public interface Geofence {
    public static final int GEOFENCE_TRANSITION_DWELL = 4;
    public static final int GEOFENCE_TRANSITION_ENTER = 1;
    public static final int GEOFENCE_TRANSITION_EXIT = 2;
    public static final long NEVER_EXPIRE = -1;

    /* loaded from: classes2.dex */
    public static final class Builder {
        private double zzbjG;
        private double zzbjH;
        private float zzbjI;
        private String zzOV = null;
        private int zzbjD = 0;
        private long zzbjE = Long.MIN_VALUE;
        private short zzbjF = -1;
        private int zzbjJ = 0;
        private int zzbjK = -1;

        public Geofence build() {
            if (this.zzOV == null) {
                throw new IllegalArgumentException("Request ID not set.");
            }
            if (this.zzbjD == 0) {
                throw new IllegalArgumentException("Transitions types not set.");
            }
            if ((this.zzbjD & 4) != 0 && this.zzbjK < 0) {
                throw new IllegalArgumentException("Non-negative loitering delay needs to be set when transition types include GEOFENCE_TRANSITION_DWELLING.");
            }
            if (this.zzbjE == Long.MIN_VALUE) {
                throw new IllegalArgumentException("Expiration not set.");
            }
            if (this.zzbjF == -1) {
                throw new IllegalArgumentException("Geofence region not set.");
            }
            if (this.zzbjJ >= 0) {
                return new zzasm(this.zzOV, this.zzbjD, (short) 1, this.zzbjG, this.zzbjH, this.zzbjI, this.zzbjE, this.zzbjJ, this.zzbjK);
            }
            throw new IllegalArgumentException("Notification responsiveness should be nonnegative.");
        }

        public Builder setCircularRegion(double d, double d2, float f) {
            this.zzbjF = (short) 1;
            this.zzbjG = d;
            this.zzbjH = d2;
            this.zzbjI = f;
            return this;
        }

        public Builder setExpirationDuration(long j) {
            if (j < 0) {
                this.zzbjE = -1L;
            } else {
                this.zzbjE = SystemClock.elapsedRealtime() + j;
            }
            return this;
        }

        public Builder setLoiteringDelay(int i) {
            this.zzbjK = i;
            return this;
        }

        public Builder setNotificationResponsiveness(int i) {
            this.zzbjJ = i;
            return this;
        }

        public Builder setRequestId(String str) {
            this.zzOV = str;
            return this;
        }

        public Builder setTransitionTypes(int i) {
            this.zzbjD = i;
            return this;
        }
    }

    String getRequestId();
}
