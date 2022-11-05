package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzave;
/* loaded from: classes2.dex */
public class zzavj extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzavj> CREATOR = new zzavk();
    final int versionCode;
    private final zzave zzbxS;
    private final String zzbxT;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzavj(int i, String str, IBinder iBinder) {
        this.versionCode = i;
        this.zzbxT = (String) com.google.android.gms.common.internal.zzac.zzw(str);
        this.zzbxS = zzave.zza.zzex(iBinder);
    }

    public IBinder getCallbackBinder() {
        if (this.zzbxS == null) {
            return null;
        }
        return this.zzbxS.asBinder();
    }

    public String getToken() {
        return this.zzbxT;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzavk.zza(this, parcel, i);
    }
}
