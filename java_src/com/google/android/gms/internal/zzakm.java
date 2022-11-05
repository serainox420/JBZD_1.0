package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.query.internal.FilterHolder;
/* loaded from: classes2.dex */
public class zzakm extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzakm> CREATOR = new zzakn();
    final String[] zzaLn;
    final DriveId zzaLp;
    final FilterHolder zzaOw;
    final int zzaiI;
    final String zzamJ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzakm(int i, String str, String[] strArr, DriveId driveId, FilterHolder filterHolder) {
        this.zzaiI = i;
        this.zzamJ = str;
        this.zzaLn = strArr;
        this.zzaLp = driveId;
        this.zzaOw = filterHolder;
    }

    public zzakm(String str, String[] strArr, DriveId driveId, FilterHolder filterHolder) {
        this(1, str, strArr, driveId, filterHolder);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzakn.zza(this, parcel, i);
    }
}
