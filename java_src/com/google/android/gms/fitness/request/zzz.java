package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzaoq;
import java.util.Locale;
/* loaded from: classes2.dex */
public class zzz extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzz> CREATOR = new zzaa();
    private final int versionCode;
    private final zzaoq zzaVV;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzz(int i, IBinder iBinder) {
        this.versionCode = i;
        this.zzaVV = zzaoq.zza.zzcu(iBinder);
    }

    public IBinder getCallbackBinder() {
        return this.zzaVV.asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.versionCode;
    }

    public String toString() {
        return String.format(Locale.ENGLISH, "GetFileUriRequest {%d, %s}", Integer.valueOf(this.versionCode), this.zzaVV);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaa.zza(this, parcel, i);
    }
}
