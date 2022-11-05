package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzae extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzae> CREATOR = new zzaf();
    private final int status;
    private final int versionCode;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzae(int i, int i2) {
        this.versionCode = i;
        this.status = i2;
    }

    private boolean zza(zzae zzaeVar) {
        return this.status == zzaeVar.status;
    }

    private static String zzha(int i) {
        switch (i) {
            case 0:
                return "skipped";
            case 1:
                return "started";
            case 2:
                return "completed";
            case 3:
                return "failed";
            default:
                return "invalid";
        }
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof zzae) && zza((zzae) obj));
    }

    public int getStatus() {
        return this.status;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.versionCode;
    }

    public int hashCode() {
        return this.status;
    }

    public String toString() {
        return zzha(this.status);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaf.zza(this, parcel, i);
    }
}
