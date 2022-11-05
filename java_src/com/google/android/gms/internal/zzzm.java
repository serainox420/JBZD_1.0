package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzbxy;
import com.google.android.gms.internal.zzzk;
import java.util.Arrays;
/* loaded from: classes2.dex */
public class zzzm extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzzm> CREATOR = new zzzn();
    public zzzu zzaxI;
    public byte[] zzaxJ;
    public int[] zzaxK;
    public String[] zzaxL;
    public int[] zzaxM;
    public byte[][] zzaxN;
    public boolean zzaxO;
    public final zzbxy.zzd zzaxP;
    public final zzzk.zzc zzaxQ;
    public final zzzk.zzc zzaxR;

    public zzzm(zzzu zzzuVar, zzbxy.zzd zzdVar, zzzk.zzc zzcVar, zzzk.zzc zzcVar2, int[] iArr, String[] strArr, int[] iArr2, byte[][] bArr, boolean z) {
        this.zzaxI = zzzuVar;
        this.zzaxP = zzdVar;
        this.zzaxQ = zzcVar;
        this.zzaxR = zzcVar2;
        this.zzaxK = iArr;
        this.zzaxL = strArr;
        this.zzaxM = iArr2;
        this.zzaxN = bArr;
        this.zzaxO = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzzm(zzzu zzzuVar, byte[] bArr, int[] iArr, String[] strArr, int[] iArr2, byte[][] bArr2, boolean z) {
        this.zzaxI = zzzuVar;
        this.zzaxJ = bArr;
        this.zzaxK = iArr;
        this.zzaxL = strArr;
        this.zzaxP = null;
        this.zzaxQ = null;
        this.zzaxR = null;
        this.zzaxM = iArr2;
        this.zzaxN = bArr2;
        this.zzaxO = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzzm)) {
            return false;
        }
        zzzm zzzmVar = (zzzm) obj;
        return com.google.android.gms.common.internal.zzaa.equal(this.zzaxI, zzzmVar.zzaxI) && Arrays.equals(this.zzaxJ, zzzmVar.zzaxJ) && Arrays.equals(this.zzaxK, zzzmVar.zzaxK) && Arrays.equals(this.zzaxL, zzzmVar.zzaxL) && com.google.android.gms.common.internal.zzaa.equal(this.zzaxP, zzzmVar.zzaxP) && com.google.android.gms.common.internal.zzaa.equal(this.zzaxQ, zzzmVar.zzaxQ) && com.google.android.gms.common.internal.zzaa.equal(this.zzaxR, zzzmVar.zzaxR) && Arrays.equals(this.zzaxM, zzzmVar.zzaxM) && Arrays.deepEquals(this.zzaxN, zzzmVar.zzaxN) && this.zzaxO == zzzmVar.zzaxO;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzaxI, this.zzaxJ, this.zzaxK, this.zzaxL, this.zzaxP, this.zzaxQ, this.zzaxR, this.zzaxM, this.zzaxN, Boolean.valueOf(this.zzaxO));
    }

    public String toString() {
        return "LogEventParcelable[" + this.zzaxI + ", LogEventBytes: " + (this.zzaxJ == null ? null : new String(this.zzaxJ)) + ", TestCodes: " + Arrays.toString(this.zzaxK) + ", MendelPackages: " + Arrays.toString(this.zzaxL) + ", LogEvent: " + this.zzaxP + ", ExtensionProducer: " + this.zzaxQ + ", VeProducer: " + this.zzaxR + ", ExperimentIDs: " + Arrays.toString(this.zzaxM) + ", ExperimentTokens: " + Arrays.toString(this.zzaxN) + ", AddPhenotypeExperimentTokens: " + this.zzaxO + "]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzzn.zza(this, parcel, i);
    }
}
