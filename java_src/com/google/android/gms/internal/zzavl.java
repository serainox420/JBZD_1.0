package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzave;
/* loaded from: classes2.dex */
public class zzavl extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzavl> CREATOR = new zzavm();
    final int versionCode;
    private final zzave zzbxS;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzavl(int i, IBinder iBinder) {
        this.versionCode = i;
        com.google.android.gms.common.internal.zzac.zzw(iBinder);
        this.zzbxS = zzave.zza.zzex(iBinder);
    }

    public IBinder getCallbackBinder() {
        if (this.zzbxS == null) {
            return null;
        }
        return this.zzbxS.asBinder();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzavm.zza(this, parcel, i);
    }
}
