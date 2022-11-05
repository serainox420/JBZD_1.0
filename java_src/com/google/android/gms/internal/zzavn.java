package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzave;
/* loaded from: classes2.dex */
public class zzavn extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzavn> CREATOR = new zzavo();
    final int versionCode;
    private final zzauy zzbxP;
    private final zzave zzbxS;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzavn(int i, zzauy zzauyVar, IBinder iBinder) {
        this.versionCode = i;
        this.zzbxP = (zzauy) com.google.android.gms.common.internal.zzac.zzw(zzauyVar);
        com.google.android.gms.common.internal.zzac.zzw(iBinder);
        this.zzbxS = zzave.zza.zzex(iBinder);
    }

    public IBinder getCallbackBinder() {
        return this.zzbxS.asBinder();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzavo.zza(this, parcel, i);
    }

    public zzauy zzNM() {
        return this.zzbxP;
    }
}
