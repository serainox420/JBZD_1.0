package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
/* loaded from: classes2.dex */
public class zzm extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzm> CREATOR = new zzn();
    private String zzaLq;
    private int zzaLr;
    private String zzaLs;
    private String zzaLt;
    private int zzaLu;
    private boolean zzaLv;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzm(int i, String str, int i2, String str2, String str3, int i3, boolean z) {
        this.zzaiI = i;
        this.zzaLq = str;
        this.zzaLr = i2;
        this.zzaLs = str2;
        this.zzaLt = str3;
        this.zzaLu = i3;
        this.zzaLv = z;
    }

    public static boolean zzek(int i) {
        switch (i) {
            case 256:
            case FileUploadPreferences.BATTERY_USAGE_CHARGING_ONLY /* 257 */:
            case 258:
                return true;
            default:
                return false;
        }
    }

    public static boolean zzel(int i) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
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
        zzm zzmVar = (zzm) obj;
        return zzaa.equal(this.zzaLq, zzmVar.zzaLq) && this.zzaLr == zzmVar.zzaLr && this.zzaLu == zzmVar.zzaLu && this.zzaLv == zzmVar.zzaLv;
    }

    public int getRole() {
        if (!zzel(this.zzaLu)) {
            return -1;
        }
        return this.zzaLu;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzaLq, Integer.valueOf(this.zzaLr), Integer.valueOf(this.zzaLu), Boolean.valueOf(this.zzaLv));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzn.zza(this, parcel, i);
    }

    public String zzAH() {
        if (!zzek(this.zzaLr)) {
            return null;
        }
        return this.zzaLq;
    }

    public int zzAI() {
        if (!zzek(this.zzaLr)) {
            return -1;
        }
        return this.zzaLr;
    }

    public String zzAJ() {
        return this.zzaLs;
    }

    public String zzAK() {
        return this.zzaLt;
    }

    public boolean zzAL() {
        return this.zzaLv;
    }
}
