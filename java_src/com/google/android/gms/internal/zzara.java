package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzara extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzara> CREATOR = new zzarb();
    private final String zzaJT;
    private final Intent zzbiA;
    private final byte[] zzbiB;
    private final zzaqr zzbiC;
    private final zzarn zzbiD;
    private final boolean zzbiE;
    private final int zzbix;
    private final boolean zzbiy;
    private final Intent zzbiz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzara(int i, String str, boolean z, Intent intent, Intent intent2, byte[] bArr, zzaqr zzaqrVar, zzarn zzarnVar, boolean z2) {
        this.zzbix = i;
        this.zzaJT = str;
        this.zzbiy = z;
        this.zzbiz = intent;
        this.zzbiA = intent2;
        this.zzbiB = bArr;
        this.zzbiC = zzaqrVar;
        this.zzbiD = zzarnVar;
        this.zzbiE = z2;
    }

    public String getAccountName() {
        return this.zzaJT;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzarb.zza(this, parcel, i);
    }

    public boolean zzHA() {
        return this.zzbiy;
    }

    public Intent zzHB() {
        return this.zzbiz;
    }

    public Intent zzHC() {
        return this.zzbiA;
    }

    public byte[] zzHD() {
        return this.zzbiB;
    }

    public zzaqr zzHE() {
        return this.zzbiC;
    }

    public zzarn zzHF() {
        return this.zzbiD;
    }

    public boolean zzHG() {
        return this.zzbiE;
    }

    public int zzHz() {
        return this.zzbix;
    }
}
