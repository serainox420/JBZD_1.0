package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzapf;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class zzap extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzap> CREATOR = new zzaq();
    private final int versionCode;
    private final zzapf zzaWh;
    private final List<String> zzaWi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzap(int i, IBinder iBinder, List<String> list) {
        this.versionCode = i;
        this.zzaWh = zzapf.zza.zzcJ(iBinder);
        this.zzaWi = list == null ? Collections.emptyList() : list;
    }

    public IBinder getCallbackBinder() {
        return this.zzaWh.asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.versionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaq.zza(this, parcel, i);
    }

    public List<String> zzDb() {
        return this.zzaWi;
    }
}
