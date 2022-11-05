package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public class zzc extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzc> CREATOR = new zzd();
    final ParcelFileDescriptor zzaEr;
    final int zzaKE;
    final int zzaKF;
    final DriveId zzaKG;
    final boolean zzaKH;
    final int zzaiI;
    final String zzxB;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzc(int i, ParcelFileDescriptor parcelFileDescriptor, int i2, int i3, DriveId driveId, boolean z, String str) {
        this.zzaiI = i;
        this.zzaEr = parcelFileDescriptor;
        this.zzaKE = i2;
        this.zzaKF = i3;
        this.zzaKG = driveId;
        this.zzaKH = z;
        this.zzxB = str;
    }

    public DriveId getDriveId() {
        return this.zzaKG;
    }

    public InputStream getInputStream() {
        return new FileInputStream(this.zzaEr.getFileDescriptor());
    }

    public int getMode() {
        return this.zzaKF;
    }

    public OutputStream getOutputStream() {
        return new FileOutputStream(this.zzaEr.getFileDescriptor());
    }

    public ParcelFileDescriptor getParcelFileDescriptor() {
        return this.zzaEr;
    }

    public int getRequestId() {
        return this.zzaKE;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzd.zza(this, parcel, i);
    }

    public boolean zzAo() {
        return this.zzaKH;
    }
}
