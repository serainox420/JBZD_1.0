package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzavc;
import com.google.android.gms.internal.zzavd;
import com.google.android.gms.internal.zzave;
/* loaded from: classes2.dex */
public class zzavp extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzavp> CREATOR = new zzavq();
    private final String description;
    private final String name;
    final int versionCode;
    private final byte zzbxO;
    private final zzavc zzbxQ;
    private final zzavd zzbxR;
    private final zzave zzbxS;
    private final byte zzbxV;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzavp(int i, String str, String str2, byte b, byte b2, IBinder iBinder, IBinder iBinder2, IBinder iBinder3) {
        this.versionCode = i;
        this.name = com.google.android.gms.common.internal.zzac.zzdr(str);
        this.description = (String) com.google.android.gms.common.internal.zzac.zzw(str2);
        this.zzbxO = b;
        this.zzbxV = b2;
        com.google.android.gms.common.internal.zzac.zzw(iBinder);
        this.zzbxQ = zzavc.zza.zzev(iBinder);
        com.google.android.gms.common.internal.zzac.zzw(iBinder2);
        this.zzbxR = zzavd.zza.zzew(iBinder2);
        com.google.android.gms.common.internal.zzac.zzw(iBinder3);
        this.zzbxS = zzave.zza.zzex(iBinder3);
    }

    public IBinder getCallbackBinder() {
        if (this.zzbxS == null) {
            return null;
        }
        return this.zzbxS.asBinder();
    }

    public String getDescription() {
        return this.description;
    }

    public String getName() {
        return this.name;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzavq.zza(this, parcel, i);
    }

    public byte zzNK() {
        return this.zzbxO;
    }

    public byte zzNP() {
        return this.zzbxV;
    }

    public IBinder zzNQ() {
        if (this.zzbxQ == null) {
            return null;
        }
        return this.zzbxQ.asBinder();
    }

    public IBinder zzNR() {
        if (this.zzbxR == null) {
            return null;
        }
        return this.zzbxR.asBinder();
    }
}
