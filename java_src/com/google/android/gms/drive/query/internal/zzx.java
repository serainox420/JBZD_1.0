package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
/* loaded from: classes2.dex */
public class zzx extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzx> CREATOR = new zzy();
    public static final zzx zzaQA = new zzx("=");
    public static final zzx zzaQB = new zzx("<");
    public static final zzx zzaQC = new zzx("<=");
    public static final zzx zzaQD = new zzx(">");
    public static final zzx zzaQE = new zzx(">=");
    public static final zzx zzaQF = new zzx(AdTrackerConstants.ANDROID);
    public static final zzx zzaQG = new zzx("or");
    public static final zzx zzaQH = new zzx("not");
    public static final zzx zzaQI = new zzx("contains");
    final String mTag;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzx(int i, String str) {
        this.zzaiI = i;
        this.mTag = str;
    }

    private zzx(String str) {
        this(1, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzx zzxVar = (zzx) obj;
            return this.mTag == null ? zzxVar.mTag == null : this.mTag.equals(zzxVar.mTag);
        }
        return false;
    }

    public String getTag() {
        return this.mTag;
    }

    public int hashCode() {
        return (this.mTag == null ? 0 : this.mTag.hashCode()) + 31;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzy.zza(this, parcel, i);
    }
}
