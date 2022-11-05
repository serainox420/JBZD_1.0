package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.WorkSource;
/* loaded from: classes2.dex */
public class zza extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zza> CREATOR = new zzb();
    private String mTag;
    private String zzaiu;
    private long zzbjk;
    private boolean zzbjl;
    private WorkSource zzbjm;
    private int[] zzbjn;
    private boolean zzbjo;
    private final long zzbjp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zza(long j, boolean z, WorkSource workSource, String str, int[] iArr, boolean z2, String str2, long j2) {
        this.zzbjk = j;
        this.zzbjl = z;
        this.zzbjm = workSource;
        this.mTag = str;
        this.zzbjn = iArr;
        this.zzbjo = z2;
        this.zzaiu = str2;
        this.zzbjp = j2;
    }

    public String getAccountName() {
        return this.zzaiu;
    }

    public long getIntervalMillis() {
        return this.zzbjk;
    }

    public String getTag() {
        return this.mTag;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }

    public boolean zzHX() {
        return this.zzbjl;
    }

    public WorkSource zzHY() {
        return this.zzbjm;
    }

    public int[] zzHZ() {
        return this.zzbjn;
    }

    public boolean zzIa() {
        return this.zzbjo;
    }

    public long zzIb() {
        return this.zzbjp;
    }
}
