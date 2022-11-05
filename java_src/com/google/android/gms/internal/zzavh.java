package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzavc;
import com.google.android.gms.internal.zzavd;
import com.google.android.gms.internal.zzave;
/* loaded from: classes2.dex */
public class zzavh extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzavh> CREATOR = new zzavi();
    private final String description;
    private final String name;
    private final long timeoutMillis;
    final int versionCode;
    private final byte zzbxO;
    private final zzauy zzbxP;
    private final zzavc zzbxQ;
    private final zzavd zzbxR;
    private final zzave zzbxS;
    private final String zzbxT;
    private final byte zzbxU;
    private final byte zzbxV;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzavh(int i, zzauy zzauyVar, String str, String str2, byte b, long j, String str3, byte b2, byte b3, IBinder iBinder, IBinder iBinder2, IBinder iBinder3) {
        this.versionCode = i;
        this.zzbxP = (zzauy) com.google.android.gms.common.internal.zzac.zzw(zzauyVar);
        this.name = com.google.android.gms.common.internal.zzac.zzdr(str);
        this.description = (String) com.google.android.gms.common.internal.zzac.zzw(str2);
        this.zzbxO = b;
        this.timeoutMillis = j;
        this.zzbxU = b2;
        this.zzbxV = b3;
        this.zzbxT = str3;
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

    public String getToken() {
        return this.zzbxT;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzavi.zza(this, parcel, i);
    }

    public byte zzNK() {
        return this.zzbxO;
    }

    public zzauy zzNM() {
        return this.zzbxP;
    }

    public long zzNN() {
        return this.timeoutMillis;
    }

    public byte zzNO() {
        return this.zzbxU;
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
