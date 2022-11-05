package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
/* loaded from: classes2.dex */
public class zzahb extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzahb> CREATOR = new zzahc();
    final String zzaLc;
    final boolean zzaLd;
    final boolean zzaLh;
    final DriveId zzaMp;
    final MetadataBundle zzaMq;
    final com.google.android.gms.drive.zzc zzaMr;
    final int zzaMs;
    final int zzaMt;
    final boolean zzaMu;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzahb(int i, DriveId driveId, MetadataBundle metadataBundle, com.google.android.gms.drive.zzc zzcVar, boolean z, String str, int i2, int i3, boolean z2, boolean z3) {
        this.zzaiI = i;
        this.zzaMp = driveId;
        this.zzaMq = metadataBundle;
        this.zzaMr = zzcVar;
        this.zzaLd = z;
        this.zzaLc = str;
        this.zzaMs = i2;
        this.zzaMt = i3;
        this.zzaMu = z2;
        this.zzaLh = z3;
    }

    public zzahb(DriveId driveId, MetadataBundle metadataBundle, int i, boolean z, com.google.android.gms.drive.zzl zzlVar) {
        this(1, driveId, metadataBundle, null, zzlVar.zzAv(), zzlVar.zzAu(), zzlVar.zzAw(), i, z, zzlVar.zzAB());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzahc.zza(this, parcel, i);
    }
}
