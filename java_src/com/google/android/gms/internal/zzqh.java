package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.appevents.AppEventsConstants;
@zzme
/* loaded from: classes.dex */
public final class zzqh extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzqh> CREATOR = new zzqi();
    public int zzYW;
    public int zzYX;
    public boolean zzYY;
    public boolean zzYZ;
    public String zzba;

    public zzqh(int i, int i2, boolean z) {
        this(i, i2, z, false, false);
    }

    public zzqh(int i, int i2, boolean z, boolean z2) {
        this(i, i2, z, false, z2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzqh(int i, int i2, boolean z, boolean z2, boolean z3) {
        this(new StringBuilder(String.valueOf(r1).length() + 24 + String.valueOf(r0).length()).append(r1).append(i).append(".").append(i2).append(".").append(r0).toString(), i, i2, z, z3);
        String valueOf = String.valueOf("afma-sdk-a-v");
        String str = z ? AppEventsConstants.EVENT_PARAM_VALUE_NO : z2 ? "2" : "1";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzqh(String str, int i, int i2, boolean z, boolean z2) {
        this.zzba = str;
        this.zzYW = i;
        this.zzYX = i2;
        this.zzYY = z;
        this.zzYZ = z2;
    }

    public static zzqh zzlk() {
        return new zzqh(10298208, 10298208, true);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzqi.zza(this, parcel, i);
    }
}
