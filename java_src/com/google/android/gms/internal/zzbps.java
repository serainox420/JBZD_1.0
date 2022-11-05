package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbps {
    private final long zzcgk;

    public zzbps(long j) {
        this.zzcgk = j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.zzcgk == ((zzbps) obj).zzcgk;
    }

    public int hashCode() {
        return (int) (this.zzcgk ^ (this.zzcgk >>> 32));
    }

    public String toString() {
        return new StringBuilder(35).append("Tag{tagNumber=").append(this.zzcgk).append("}").toString();
    }

    public long zzZl() {
        return this.zzcgk;
    }
}
