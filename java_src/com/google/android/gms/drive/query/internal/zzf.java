package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Locale;
/* loaded from: classes2.dex */
public class zzf extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzf> CREATOR = new zzg();
    final String zzaOI;
    final boolean zzaQm;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzf(int i, String str, boolean z) {
        this.zzaiI = i;
        this.zzaOI = str;
        this.zzaQm = z;
    }

    public zzf(String str, boolean z) {
        this(1, str, z);
    }

    public String toString() {
        Locale locale = Locale.US;
        Object[] objArr = new Object[2];
        objArr[0] = this.zzaOI;
        objArr[1] = this.zzaQm ? "ASC" : "DESC";
        return String.format(locale, "FieldWithSortOrder[%s %s]", objArr);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzg.zza(this, parcel, i);
    }
}
