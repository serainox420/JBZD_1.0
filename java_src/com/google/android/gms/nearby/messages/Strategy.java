package com.google.android.gms.nearby.messages;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzac;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class Strategy extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final int DISCOVERY_MODE_BROADCAST = 1;
    public static final int DISCOVERY_MODE_DEFAULT = 3;
    public static final int DISCOVERY_MODE_SCAN = 2;
    public static final int DISTANCE_TYPE_DEFAULT = 0;
    public static final int DISTANCE_TYPE_EARSHOT = 1;
    public static final int TTL_SECONDS_DEFAULT = 300;
    public static final int TTL_SECONDS_INFINITE = Integer.MAX_VALUE;
    public static final int TTL_SECONDS_MAX = 86400;
    final int zzaiI;
    @Deprecated
    final int zzbzQ;
    final int zzbzR;
    final int zzbzS;
    @Deprecated
    final boolean zzbzT;
    final int zzbzU;
    final int zzbzV;
    private final int zzbzW;
    public static final Parcelable.Creator<Strategy> CREATOR = new zzd();
    public static final Strategy DEFAULT = new Builder().build();
    public static final Strategy BLE_ONLY = new Builder().zzmB(2).setTtlSeconds(Integer.MAX_VALUE).build();
    @Deprecated
    public static final Strategy zzbzP = BLE_ONLY;

    /* loaded from: classes2.dex */
    public static class Builder {
        private int zzbyl = 3;
        private int zzbzX = 300;
        private int zzbzY = 0;
        private int zzbzZ = -1;
        private int zzbAa = 0;

        public Strategy build() {
            if (this.zzbzZ == 2 && this.zzbzY == 1) {
                throw new IllegalStateException("Cannot set EARSHOT with BLE only mode.");
            }
            return new Strategy(2, 0, this.zzbzX, this.zzbzY, false, this.zzbzZ, this.zzbyl, 0);
        }

        public Builder setDiscoveryMode(int i) {
            this.zzbyl = i;
            return this;
        }

        public Builder setDistanceType(int i) {
            this.zzbzY = i;
            return this;
        }

        public Builder setTtlSeconds(int i) {
            zzac.zzb(i == Integer.MAX_VALUE || (i > 0 && i <= 86400), "mTtlSeconds(%d) must either be TTL_SECONDS_INFINITE, or it must be between 1 and TTL_SECONDS_MAX(%d) inclusive", Integer.valueOf(i), Integer.valueOf((int) Strategy.TTL_SECONDS_MAX));
            this.zzbzX = i;
            return this;
        }

        public Builder zzmB(int i) {
            this.zzbzZ = i;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Strategy(int i, int i2, int i3, int i4, boolean z, int i5, int i6, int i7) {
        this.zzaiI = i;
        this.zzbzQ = i2;
        if (i2 != 0) {
            switch (i2) {
                case 2:
                    this.zzbzV = 1;
                    break;
                case 3:
                    this.zzbzV = 2;
                    break;
                default:
                    this.zzbzV = 3;
                    break;
            }
        } else {
            this.zzbzV = i6;
        }
        this.zzbzS = i4;
        this.zzbzT = z;
        if (!z) {
            this.zzbzR = i3;
            switch (i5) {
                case -1:
                case 0:
                case 1:
                case 6:
                    this.zzbzU = -1;
                    break;
                case 2:
                case 3:
                case 4:
                case 5:
                default:
                    this.zzbzU = i5;
                    break;
            }
        } else {
            this.zzbzU = 2;
            this.zzbzR = Integer.MAX_VALUE;
        }
        this.zzbzW = i7;
    }

    private static String zzmA(int i) {
        if (i == 3) {
            return "DEFAULT";
        }
        ArrayList arrayList = new ArrayList();
        if ((i & 1) > 0) {
            arrayList.add("BROADCAST");
        }
        if ((i & 2) > 0) {
            arrayList.add("SCAN");
        }
        return arrayList.isEmpty() ? new StringBuilder(19).append("UNKNOWN:").append(i).toString() : arrayList.toString();
    }

    private static String zzmx(int i) {
        switch (i) {
            case 0:
                return "DEFAULT";
            case 1:
                return "ALWAYS_ON";
            default:
                return new StringBuilder(20).append("UNKNOWN: ").append(i).toString();
        }
    }

    private static String zzmy(int i) {
        switch (i) {
            case 0:
                return "DEFAULT";
            case 1:
                return "EARSHOT";
            default:
                return new StringBuilder(19).append("UNKNOWN:").append(i).toString();
        }
    }

    private static String zzmz(int i) {
        if (i == -1) {
            return "DEFAULT";
        }
        ArrayList arrayList = new ArrayList();
        if ((i & 4) > 0) {
            arrayList.add("ULTRASOUND");
        }
        if ((i & 2) > 0) {
            arrayList.add("BLE");
        }
        return arrayList.isEmpty() ? new StringBuilder(19).append("UNKNOWN:").append(i).toString() : arrayList.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Strategy)) {
            return false;
        }
        Strategy strategy = (Strategy) obj;
        return this.zzaiI == strategy.zzaiI && this.zzbzV == strategy.zzbzV && this.zzbzR == strategy.zzbzR && this.zzbzS == strategy.zzbzS && this.zzbzU == strategy.zzbzU;
    }

    public int hashCode() {
        return (((((((this.zzaiI * 31) + this.zzbzV) * 31) + this.zzbzR) * 31) + this.zzbzS) * 31) + this.zzbzU;
    }

    public String toString() {
        int i = this.zzbzR;
        String valueOf = String.valueOf(zzmy(this.zzbzS));
        String valueOf2 = String.valueOf(zzmz(this.zzbzU));
        String valueOf3 = String.valueOf(zzmA(this.zzbzV));
        String valueOf4 = String.valueOf(zzmx(this.zzbzW));
        return new StringBuilder(String.valueOf(valueOf).length() + 102 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length()).append("Strategy{ttlSeconds=").append(i).append(", distanceType=").append(valueOf).append(", discoveryMedium=").append(valueOf2).append(", discoveryMode=").append(valueOf3).append(", backgroundScanMode=").append(valueOf4).append("}").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzd.zza(this, parcel, i);
    }

    public int zzOJ() {
        return this.zzbzU;
    }

    public int zzOK() {
        return this.zzbzW;
    }

    public int zzOc() {
        return this.zzbzV;
    }
}
