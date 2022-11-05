package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import java.io.InputStream;
@zzme
/* loaded from: classes.dex */
public class zzdp extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzdp> CREATOR = new zzdq();
    private ParcelFileDescriptor zzyK;

    public zzdp() {
        this(null);
    }

    public zzdp(ParcelFileDescriptor parcelFileDescriptor) {
        this.zzyK = parcelFileDescriptor;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzdq.zza(this, parcel, i);
    }

    public synchronized boolean zzew() {
        return this.zzyK != null;
    }

    public synchronized InputStream zzex() {
        ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = null;
        synchronized (this) {
            if (this.zzyK != null) {
                autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(this.zzyK);
                this.zzyK = null;
            }
        }
        return autoCloseInputStream;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized ParcelFileDescriptor zzey() {
        return this.zzyK;
    }
}
