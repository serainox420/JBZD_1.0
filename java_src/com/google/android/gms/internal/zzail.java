package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.FileUploadPreferences;
/* loaded from: classes2.dex */
public final class zzail extends com.google.android.gms.common.internal.safeparcel.zza implements FileUploadPreferences {
    public static final Parcelable.Creator<zzail> CREATOR = new zzaim();
    int zzaNJ;
    int zzaNK;
    boolean zzaNL;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzail(int i, int i2, int i3, boolean z) {
        this.zzaiI = i;
        this.zzaNJ = i2;
        this.zzaNK = i3;
        this.zzaNL = z;
    }

    public static boolean zzeT(int i) {
        switch (i) {
            case 1:
            case 2:
                return true;
            default:
                return false;
        }
    }

    public static boolean zzeU(int i) {
        switch (i) {
            case 256:
            case FileUploadPreferences.BATTERY_USAGE_CHARGING_ONLY /* 257 */:
                return true;
            default:
                return false;
        }
    }

    @Override // com.google.android.gms.drive.FileUploadPreferences
    public int getBatteryUsagePreference() {
        if (!zzeU(this.zzaNK)) {
            return 0;
        }
        return this.zzaNK;
    }

    @Override // com.google.android.gms.drive.FileUploadPreferences
    public int getNetworkTypePreference() {
        if (!zzeT(this.zzaNJ)) {
            return 0;
        }
        return this.zzaNJ;
    }

    @Override // com.google.android.gms.drive.FileUploadPreferences
    public boolean isRoamingAllowed() {
        return this.zzaNL;
    }

    @Override // com.google.android.gms.drive.FileUploadPreferences
    public void setBatteryUsagePreference(int i) {
        if (!zzeU(i)) {
            throw new IllegalArgumentException("Invalid battery usage preference value.");
        }
        this.zzaNK = i;
    }

    @Override // com.google.android.gms.drive.FileUploadPreferences
    public void setNetworkTypePreference(int i) {
        if (!zzeT(i)) {
            throw new IllegalArgumentException("Invalid data connection preference value.");
        }
        this.zzaNJ = i;
    }

    @Override // com.google.android.gms.drive.FileUploadPreferences
    public void setRoamingAllowed(boolean z) {
        this.zzaNL = z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaim.zza(this, parcel, i);
    }
}
